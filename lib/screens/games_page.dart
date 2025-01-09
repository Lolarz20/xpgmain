import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/MainScreen/games.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

class GamesWidget extends StatelessWidget {
  const GamesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final key = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.white,
      key: key,
      drawer: MainDrawer(),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('games').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No games available."));
          }

          final games = snapshot.data!.docs;

          return SingleChildScrollView(
            child: Column(
              children: [
                TopWidget(keyMain: key),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('OUR',
                        style: TextStyle(fontFamily: 'pop2', fontSize: 30)),
                    SizedBox(width: width * 0.005),
                    Text('GAMES',
                        style: TextStyle(
                            fontFamily: 'pop2',
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: width * 0.15,
                  height: 0.5,
                  color: Colors.blueGrey,
                ),
                SizedBox(height: height * 0.05),
                GamesWidget1(),
                // ResponsiveBuilder(
                //   builder: (context, sizingInformation) => sizingInformation
                //           .isDesktop
                //       ? Container(
                //           width: width,
                //           //decoration: BoxDecoration(color: Colors.grey[200]),
                //           child: GridView.builder(
                //             physics: NeverScrollableScrollPhysics(),
                //             shrinkWrap: true,
                //             itemCount: games.length,
                //             gridDelegate:
                //                 SliverGridDelegateWithFixedCrossAxisCount(
                //                     crossAxisCount: 5),
                //             itemBuilder: (context, index) {
                //               final game =
                //                   games[index].data() as Map<String, dynamic>;
                //               return InkWell(
                //                 onTap: () {
                //                   context.go(
                //                       '/games/${snapshot.data?.docs[index].id}');
                //                 },
                //                 child: BuildTile(
                //                   image: game['mainImage'],
                //                   title: game['title'],
                //                   description: game['description'],
                //                 ),
                //               );
                //             },
                //           ),
                //         )
                //       : Container(
                //           width: width,
                //           //decoration: BoxDecoration(color: Colors.grey[200]),
                //           child: ListView.builder(
                //             physics: NeverScrollableScrollPhysics(),
                //             shrinkWrap: true,
                //             itemCount: games.length,
                //             itemBuilder: (context, index) {
                //               final game =
                //                   games[index].data() as Map<String, dynamic>;
                //               return InkWell(
                //                 onTap: () {
                //                   context.go(
                //                       '/games/${snapshot.data?.docs[index].id}');
                //                 },
                //                 child: BuildTile(
                //                   image: game['mainImage'],
                //                   title: game['title'],
                //                   description: game['description'],
                //                 ),
                //               );
                //             },
                //           ),
                //         ),
                // ),
                SizedBox(height: height * 0.075),
                BottomBar()
              ],
            ),
          );
        },
      ),
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
        padding: const EdgeInsets.all(32),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: NetworkImage(image),
                    width: sizingInformation.isDesktop
                        ? width * 0.15
                        : width * 0.9,
                  ),
                ),
                SizedBox(height: 10),
                Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.orange,
                        fontFamily: 'pop2',
                        fontSize: 22.5)),
                Text(description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: CupertinoColors.darkBackgroundGray,
                        fontFamily: 'pop2',
                        fontSize: 17.5)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
