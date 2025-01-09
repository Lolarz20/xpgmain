import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

class GameDetailsPage extends StatelessWidget {
  final String gameId;

  const GameDetailsPage({super.key, required this.gameId});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final controller = GlobalKey<ScaffoldState>();
    return Scaffold(
      drawer: MainDrawer(),
      key: controller,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopWidget(keyMain: controller),
            FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance
                  .collection('games')
                  .doc(gameId)
                  .get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (!snapshot.hasData || !snapshot.data!.exists) {
                  return const Center(child: Text("No game found."));
                }

                final game = snapshot.data!.data() as Map<String, dynamic>;
                final facts = game['facts'] as List<dynamic>? ?? [];
                final additionalImages =
                    game['additionalImages'] as List<dynamic>? ?? [];

                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Obraz główny
                      Stack(
                        children: [
                          Image.network(
                            game['mainImage'] ?? game['imageUrl'],
                            width: width,
                            height: height * 0.7,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: width,
                            height: height * 0.7,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 30,
                            child: SizedBox(
                              width: width * 0.7,
                              child: Text(
                                game['title'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'pop2',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Tytuł
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          game['title'],
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                            fontFamily: 'pop2',
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Opis
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          game['description'],
                          style: const TextStyle(
                            fontSize: 12.5,
                            color: Colors.grey,
                            fontFamily: 'pop2',
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Sekcja ciekawostek
                      if (facts.isNotEmpty) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: const Text(
                            'Interesting Facts',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                              fontFamily: 'pop2',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ...facts.map(
                          (fact) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.orange,
                                ),
                                const SizedBox(width: 16),
                                SizedBox(
                                  width: width * 0.9,
                                  child: Text(
                                    fact,
                                    style: const TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.grey,
                                      fontFamily: 'pop2',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],

                      // Dodatkowe obrazy
                      if (additionalImages.isNotEmpty) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: const Text(
                            'Gallery',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                              fontFamily: 'pop2',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: additionalImages.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    additionalImages[index],
                                    height: 200,
                                    width: 300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: height * 0.1),
            BottomBar()
          ],
        ),
      ),
    );
  }
}
