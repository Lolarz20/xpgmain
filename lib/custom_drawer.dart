import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawerContent extends StatelessWidget {
  final GlobalKey keyMain;
  const CustomDrawerContent({super.key, required this.keyMain});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return DraggableScrollableSheet(
      expand: true,
      initialChildSize: 0.99,
      maxChildSize: 0.999,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            context.go('/');
                          },
                          child: Image(
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                    child: Icon(Icons.image_not_supported));
                              },
                              errorBuilder: (context, error, stackTrace) {
                                return Center(
                                  child: Icon(
                                    Icons.broken_image,
                                    size: 48,
                                    color: Colors.red,
                                  ),
                                );
                              },
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fxpg.png?alt=media&token=c2c3a5ef-55cc-41d0-9498-fe0a7b22118d'),
                              height: height * 0.075),
                        ),
                        IconButton(
                            onPressed: () => context.pop(),
                            icon: Icon(Icons.menu))
                      ]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(93, 198, 201, 1),
                      backgroundColor: Color.fromRGBO(93, 198, 201, 1),
                      title: Text('WHO WE ARE',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.5,
                            fontFamily: 'pop2',
                          )),
                      children: [
                        ListTile(
                          onTap: () => context.go('/about-xpg'),
                          title: Text('Who We Are',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                        ListTile(
                          onTap: () => context.go('/fair-gaming'),
                          title: Text('Fair Gaming',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                        ListTile(
                          onTap: () => context.go('/live-studios'),
                          title: Text('Live Studios',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                        ListTile(
                          onTap: () => context.go('/api-integration'),
                          title: Text('API Integration',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                        ListTile(
                          onTap: () => context.go('/mobile'),
                          title: Text('Mobile Solutions',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                        ListTile(
                          onTap: () => context.go('/private-tables'),
                          title: Text('Private Tables',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                        ListTile(
                          onTap: () => context.go('/white-labels'),
                          title: Text('White Labels',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                        ListTile(
                          onTap: () => context.go('/partners'),
                          title: Text('Partners',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'pop2')),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[200]),
                    ExpansionTile(
                      collapsedIconColor: Color.fromRGBO(93, 198, 201, 1),
                      backgroundColor: Color.fromRGBO(93, 198, 201, 1),
                      title: Text('OUR GAMES',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.5,
                            fontFamily: 'pop2',
                          )),
                      children: [
                        StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('games')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }

                            if (!snapshot.hasData ||
                                snapshot.data!.docs.isEmpty) {
                              return const ListTile(
                                title: Text('No games available'),
                              );
                            }

                            return Column(
                              children: snapshot.data!.docs.map((doc) {
                                final gameData =
                                    doc.data() as Map<String, dynamic>;
                                return ListTile(
                                    title: Text(
                                        gameData['title'] ?? 'Unknown Title',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'pop2')),
                                    onTap: () =>
                                        context.go('/games/${doc.id}'));
                              }).toList(),
                            );
                          },
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[200]),
                    ListTile(
                      title: const Text('CAREERS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.5,
                            fontFamily: 'pop2',
                          )),
                      onTap: () =>
                          launchUrl(Uri.parse('https://mltsolution.bg/')),
                    ),
                    Divider(color: Colors.grey[200]),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('NEWS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.5,
                                fontFamily: 'pop2',
                              )),
                        ],
                      ),
                      onTap: () => context.go('/articles'),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () => launchUrl(Uri.parse(
                                  'https://mistyrose-woodpecker-280650.hostingersite.com/')),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                decoration: BoxDecoration(
                                    color: CupertinoColors.activeBlue),
                                child: Center(
                                  child: Text('LOG IN',
                                      style: TextStyle(
                                          fontSize: 17.5,
                                          color: Colors.white,
                                          fontFamily: 'pop2')),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () => context.go('/contacts'),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                decoration:
                                    BoxDecoration(color: CupertinoColors.black),
                                child: Center(
                                  child: Text('CONTACT US',
                                      style: TextStyle(
                                          fontSize: 17.5,
                                          color: Colors.white,
                                          fontFamily: 'pop2')),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
