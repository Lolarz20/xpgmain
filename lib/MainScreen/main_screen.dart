import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:xpgmain/MainScreen/about.dart';
import 'package:xpgmain/MainScreen/banner.dart';
import 'package:xpgmain/MainScreen/games.dart';
import 'package:xpgmain/MainScreen/news.dart';
import 'package:xpgmain/MainScreen/partners.dart';
import 'package:xpgmain/MainScreen/top_bar.dart';

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

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: <Widget>[
            TopWidget(),
            SizedBox(height: height * 0.05),
            BannerWidget(),
            SizedBox(height: height * 0.025),
            Divider(indent: 350, endIndent: 350, thickness: 0.5),
            SizedBox(height: height * 0.025),
            MiddleRow(),
            SizedBox(height: height * 0.05),
            Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                            child: LoadingIndicator(
                                indicatorType: Indicator.squareSpin,
                                colors: const [Colors.grey],
                                strokeWidth: 2,
                                backgroundColor: Colors.black,
                                pathBackgroundColor: Colors.black));
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
                          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fcasino.jpg?alt=media&token=2a7b9399-cf83-4305-96b2-e283cfc93f38'),
                      width: width * 0.9,
                      height: height * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.4,
                            child: Text.rich(TextSpan(
                                text:
                                    'Experience the Future of Live Gaming with',
                                style: TextStyle(
                                    fontFamily: 'pop2',
                                    fontSize: 120,
                                    color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: 'XPG',
                                    style: TextStyle(
                                        fontFamily: 'pop2',
                                        fontSize: 120,
                                        color: Colors.orange),
                                  )
                                ])),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('About',
                    style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                SizedBox(width: width * 0.0025),
                Text('XPG',
                    style: TextStyle(
                        fontFamily: 'pop2',
                        fontSize: 35,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: height * 0.05),
            About(),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Our', style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                SizedBox(width: width * 0.0025),
                Text('GAMES',
                    style: TextStyle(
                        fontFamily: 'pop2',
                        fontSize: 35,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: height * 0.05),
            GamesWidget(),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Our', style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                SizedBox(width: width * 0.0025),
                Text('PARTNERS',
                    style: TextStyle(
                        fontFamily: 'pop2',
                        fontSize: 35,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: height * 0.05),
            Partners(),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Latest',
                    style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                SizedBox(width: width * 0.0025),
                Text('NEWS',
                    style: TextStyle(
                        fontFamily: 'pop2',
                        fontSize: 35,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: height * 0.05),
            News(),
            SizedBox(height: height * 0.075),
            //BottomBar()
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }
}
