import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GamesWidget1 extends StatelessWidget {
  const GamesWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('games').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(child: Text("No games available."));
        }

        final games = snapshot.data!.docs;

        return ResponsiveBuilder(
          builder: (context, sizingInformation) => sizingInformation.isDesktop
              ? SizedBox(
                  width: width * 0.75,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: games.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5),
                    itemBuilder: (context, index) {
                      final game = games[index].data() as Map<String, dynamic>;
                      return InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          context.go('/games/${snapshot.data?.docs[index].id}');
                        },
                        child: BuildTile(
                          image: game['mainImage'],
                          title: game['title'],
                          description: game['description'],
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(
                  width: width,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: games.length,
                    itemBuilder: (context, index) {
                      final game = games[index].data() as Map<String, dynamic>;
                      return InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          context.go('/games/${snapshot.data?.docs[index].id}');
                        },
                        child: BuildTile(
                          image: game['mainImage'],
                          title: game['title'],
                          description: game['description'],
                        ),
                      );
                    },
                  ),
                ),
        );
      },
    );
  }
}

class BuildTile extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const BuildTile(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: sizingInformation.isDesktop ? 30 : 0),
              child: Container(
                width: sizingInformation.isDesktop ? 150 : 100,
                height: sizingInformation.isDesktop ? 150 : 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                // ClipOval przycina zdjęcie do kształtu koła
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipOval(
                    child: Image.network(
                      image,
                      fit: BoxFit.cover, // zapewnia widoczność całego zdjęcia
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: CupertinoColors.darkBackgroundGray,
                    fontFamily: 'pop2',
                    fontSize: 17.5)),
            // Text(description,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         overflow: TextOverflow.ellipsis,
            //         color: CupertinoColors.darkBackgroundGray,
            //         fontFamily: 'pop2',
            //         fontSize: 17.5)),
          ],
        ),
      ),
    );
  }
}
