import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: CustomHeaderDelegate(keyMain: controller)),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
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

                      final game =
                          snapshot.data!.data() as Map<String, dynamic>;
                      final facts = game['facts'] as List<dynamic>? ?? [];
                      final additionalImages =
                          game['additionalImages'] as List<dynamic>? ?? [];

                      return ResponsiveBuilder(
                        builder: (context, sizingInformation) =>
                            SingleChildScrollView(
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
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: FadeInUp(
                                        delay: Duration(milliseconds: 1000),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              game['title'],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    sizingInformation.isDesktop
                                                        ? 50
                                                        : 25,
                                                fontFamily: 'pop',
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Container(
                                              height: 0.5,
                                              color: Colors.white,
                                              width: width * 0.2,
                                            ),
                                            SizedBox(height: 15),
                                            SizedBox(
                                              width: width * 0.8,
                                              child: Text(
                                                textAlign: TextAlign.center,
                                                game['banner'],
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: sizingInformation
                                                          .isDesktop
                                                      ? 22.5
                                                      : 15,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'pop',
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),

                              // Tytuł
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        sizingInformation.isDesktop ? 75 : 15,
                                    vertical: 25),
                                child: Text(
                                  game['title'],
                                  style: TextStyle(
                                    fontSize:
                                        sizingInformation.isDesktop ? 50 : 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey,
                                    fontFamily: 'pop2',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),

                              // Opis
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        sizingInformation.isDesktop ? 150 : 20),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  game['description'],
                                  style: const TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.grey,
                                    fontFamily: 'pop2',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 32),

                              // Sekcja ciekawostek
                              if (facts.isNotEmpty) ...[
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: sizingInformation.isDesktop
                                          ? 75
                                          : 15),
                                  child: Text(
                                    'Interesting Facts',
                                    style: TextStyle(
                                      fontSize:
                                          sizingInformation.isDesktop ? 50 : 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                      fontFamily: 'pop2',
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 50),
                                ...facts.map(
                                  (fact) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          size: 15,
                                          color: Colors.blueGrey,
                                        ),
                                        const SizedBox(width: 16),
                                        SizedBox(
                                          width: width * 0.75,
                                          child: Text(
                                            fact,
                                            style: TextStyle(
                                              fontSize:
                                                  sizingInformation.isDesktop
                                                      ? 20
                                                      : 12.5,
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: sizingInformation.isDesktop
                                          ? 75
                                          : 15),
                                  child: Text(
                                    'Gallery',
                                    style: TextStyle(
                                      fontSize:
                                          sizingInformation.isDesktop ? 50 : 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                      fontFamily: 'pop2',
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2),
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: additionalImages.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 50),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          additionalImages[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: height * 0.1),
                  BottomBar()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
