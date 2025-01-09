import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/MainScreen/about.dart';
import 'package:xpgmain/MainScreen/banner.dart';
import 'package:xpgmain/MainScreen/news.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

import '../bottom_bar.dart';
import 'middle_row.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget playerWidget = CircularProgressIndicator(color: Colors.orange);

  // final ScrollController _scrollController = ScrollController();
  // double _scale = 0.0;

  @override
  void initState() {
    // _scrollController.addListener(() {
    //   double offset = _scrollController.offset;
    //   print(offset);
    //   double newScale;
    //   if (offset > 1000 && offset < 2500) {
    //     newScale = (offset - 1000) / 1000;
    //   } else if (offset >= 2500) {
    //     newScale = 1.0 - ((offset - 2500) / 1000).clamp(0.0, 1.0);
    //   } else {
    //     newScale = 0.0;
    //   }
    //
    //   if (newScale != _scale) {
    //     setState(() {
    //       _scale = newScale;
    //     });
    //   }
    // });
    super.initState();
  }

  GlobalKey<ScaffoldState> key = GlobalKey();

  bool hoverNews = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      drawer: MainDrawer(),
      key: key,
      backgroundColor: Colors.white,
      body: ResponsiveBuilder(
          builder: (context, sizingInformation) => sizingInformation.isDesktop
              ? SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TopWidget(
                        keyMain: key,
                      ),
                      SizedBox(height: height * 0.01),
                      BannerCarousel(),
                      SizedBox(height: height * 0.025),
                      Divider(indent: 350, endIndent: 350, thickness: 0.5),
                      SizedBox(height: height * 0.025),
                      MiddleRow(),
                      SizedBox(height: height * 0.015),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('LATEST',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.0025),
                          Text('NEWS',
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
                      LatestArticlesListView(),
                      SizedBox(height: height * 0.025),
                      InkWell(
                        onHover: (value) => {},
                        onTap: () => context.go('/articles'),
                        child: Container(
                          width: width * 0.125,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text('SEE ALL NEWS',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2')),
                              )),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      About(),
                      SizedBox(height: height * 0.05),
                      // SizedBox(height: height * 0.05),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text('Our',
                      //         style:
                      //             TextStyle(fontFamily: 'pop2', fontSize: 35)),
                      //     SizedBox(width: width * 0.0025),
                      //     Text('PARTNERS',
                      //         style: TextStyle(
                      //             fontFamily: 'pop2',
                      //             fontSize: 35,
                      //             color: Colors.orange,
                      //             fontWeight: FontWeight.bold)),
                      //   ],
                      // ),
                      // SizedBox(height: height * 0.05),
                      // Partners(),
                      // SizedBox(height: height * 0.075),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text('Our',
                      //         style:
                      //             TextStyle(fontFamily: 'pop2', fontSize: 35)),
                      //     SizedBox(width: width * 0.0025),
                      //     Text('PARTNERS',
                      //         style: TextStyle(
                      //             fontFamily: 'pop2',
                      //             fontSize: 35,
                      //             color: Colors.orange,
                      //             fontWeight: FontWeight.bold)),
                      //   ],
                      // ),
                      // SizedBox(height: height * 0.05),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fpragmatic.jpeg?alt=media&token=c261ef28-b3d0-4812-bf4d-53306cb7f047',
                      //       title: 'Pragmatic Play',
                      //     ),
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fbetradar.png?alt=media&token=352b3f13-344f-49e0-bf00-ed1569f3ef6b',
                      //       title: 'Betradar',
                      //     ),
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fbetsoft.png?alt=media&token=b1511cf3-d578-45de-bdba-6e87d62c2156',
                      //       title: 'Betsoft',
                      //     ),
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fconcept.png?alt=media&token=97eacc4b-4f3c-454a-899e-e052e8792381',
                      //       title: 'Concept Gaming',
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(height: height * 0.05),
                      //SizedBox(height: height * 0.075),
                      //Divider(),
                      BottomBar()
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TopWidget(
                        keyMain: key,
                      ),
                      SizedBox(height: height * 0.01),
                      BannerCarousel(),
                      SizedBox(height: height * 0.01),
                      Divider(indent: 25, endIndent: 25, thickness: 0.5),
                      SizedBox(height: height * 0.01),
                      MiddleRow(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('LATEST',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.01),
                          Text('NEWS',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Divider(indent: 75, endIndent: 55, thickness: 0.5),
                      SizedBox(height: height * 0.01),
                      LatestArticlesListView(),
                      SizedBox(height: height * 0.025),
                      InkWell(
                        onHover: (value) => {},
                        onTap: () => context.go('/articles'),
                        child: Container(
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text('SEE ALL NEWS',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2')),
                              )),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      About(),
                      SizedBox(height: height * 0.05),
                      // SizedBox(height: height * 0.05),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text('Our',
                      //         style:
                      //             TextStyle(fontFamily: 'pop2', fontSize: 35)),
                      //     SizedBox(width: width * 0.0025),
                      //     Text('PARTNERS',
                      //         style: TextStyle(
                      //             fontFamily: 'pop2',
                      //             fontSize: 35,
                      //             color: Colors.orange,
                      //             fontWeight: FontWeight.bold)),
                      //   ],
                      // ),
                      // SizedBox(height: height * 0.05),
                      // Partners(),
                      // SizedBox(height: height * 0.075),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text('Our',
                      //         style:
                      //             TextStyle(fontFamily: 'pop2', fontSize: 35)),
                      //     SizedBox(width: width * 0.0025),
                      //     Text('PARTNERS',
                      //         style: TextStyle(
                      //             fontFamily: 'pop2',
                      //             fontSize: 35,
                      //             color: Colors.orange,
                      //             fontWeight: FontWeight.bold)),
                      //   ],
                      // ),
                      // SizedBox(height: height * 0.05),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fpragmatic.jpeg?alt=media&token=c261ef28-b3d0-4812-bf4d-53306cb7f047',
                      //       title: 'Pragmatic Play',
                      //     ),
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fbetradar.png?alt=media&token=352b3f13-344f-49e0-bf00-ed1569f3ef6b',
                      //       title: 'Betradar',
                      //     ),
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fbetsoft.png?alt=media&token=b1511cf3-d578-45de-bdba-6e87d62c2156',
                      //       title: 'Betsoft',
                      //     ),
                      //     EvolutionWidget(
                      //       image:
                      //           'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fconcept.png?alt=media&token=97eacc4b-4f3c-454a-899e-e052e8792381',
                      //       title: 'Concept Gaming',
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(height: height * 0.05),
                      //SizedBox(height: height * 0.075),
                      //Divider(),
                      BottomBar()
                    ],
                  ),
                )),
    );
  }

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }
}

class EvolutionWidget extends StatelessWidget {
  final String image;
  final String title;
  const EvolutionWidget({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Kontener z obwódką koła
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blueGrey,
                width: 3,
              ),
            ),
            // ClipOval przycina zdjęcie do kształtu koła
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipOval(
                child: Padding(
                  padding: title == 'Betradar'
                      ? const EdgeInsets.only(
                          left: 24, top: 8, right: 8, bottom: 8)
                      : const EdgeInsets.all(8.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.contain, // zapewnia widoczność całego zdjęcia
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        // Tekst pod spodem
        Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontFamily: 'pop2'),
        ),
      ],
    );
  }
}
