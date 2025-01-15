import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xpgmain/bottom_bar.dart';

import '../drawer.dart';
import '../top_bar.dart';

class Partners extends StatelessWidget {
  const Partners({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final controller = GlobalKey<ScaffoldState>();
    return Scaffold(
      drawer: MainDrawer(),
      key: controller,
      backgroundColor: Colors.white,
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop? CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                delegate: CustomHeaderDelegate(keyMain: controller)),
            SliverFillRemaining(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image(
                                image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/Casino%20-296%20(1).jpg?alt=media&token=527deaf6-73f3-464b-b5cf-6b28d9204a28'),
                                width: width,
                                height: height * 0.7,
                                fit: BoxFit.cover),
                            FadeInUp(
                              delay: Duration(milliseconds: 1000),
                              child: Padding(
                                  padding:
                                  EdgeInsets.only(top: 250, left: 400),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('BEST',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 70)),
                                      Text('IN THE MARKET',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 70)),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('OUR',
                                style: TextStyle(
                                    fontFamily: 'pop2', fontSize: 30)),
                            SizedBox(width: width * 0.0025),
                            Text('PARTNERS',
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
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashFactory: NoSplash.splashFactory,
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () => launchUrl(Uri.parse('https://1xbet.com/en')),
                              child: Image(image: AssetImage('assets/1xbet.png'), height: 75),
                            ),
                            SizedBox(width: width*0.05),InkWell(
                              splashFactory: NoSplash.splashFactory,
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () => launchUrl(Uri.parse('https://everymatrix.com/')),
                              child: Image(image: AssetImage('assets/every.png'), height: 75),
                            ),
                            SizedBox(width: width*0.05),
                            InkWell(
                              splashFactory: NoSplash.splashFactory,
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () => launchUrl(Uri.parse('https://pronetgaming.com/')),
                              child: Image(image: AssetImage('assets/pronetgaming_logo.png'), height: 200, fit: BoxFit.cover),
                            ),
                          ],
                        ),

                        SizedBox(height: height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('ABOUT',
                                style: TextStyle(
                                    fontFamily: 'pop2', fontSize: 30)),
                            SizedBox(width: width * 0.0025),
                            Text('OUR PARTNERS',
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
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      splashFactory: NoSplash.splashFactory,
                                      focusColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onTap: () => launchUrl(Uri.parse('https://1xbet.com/en')),
                                      child: Image(image: AssetImage('assets/1xbet.png'), height: 75),
                                    ),
                                    SizedBox(width: width*0.025),
                                    SizedBox(width: width*0.4, child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('1xBET', style: TextStyle(color: Colors.blueGrey, fontFamily: 'pop2', fontSize: 20)),
                                          ],
                                        ),
                                        SizedBox(height: height*0.025),
                                        Text('1Xbet is a leading operator in the gambling industry, offering a wide range of sports betting, live casino games, and online slots. Known for its cutting-edge technology, attractive promotions, and global reach, 1Xbet serves players across more than 50 countries.', style: TextStyle(fontFamily: 'roboto', fontSize: 15)),
                                      ],
                                    ))
                                  ],
                                ),
                                SizedBox(height: height*0.04),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.4, child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Every Matrix', textAlign: TextAlign.start, style: TextStyle(color: Colors.blueGrey, fontFamily: 'pop2', fontSize: 20)),
                                          ],
                                        ),
                                        SizedBox(height: height*0.025),
                                        Text('EveryMatrix delivers flexible software and B2B solutions for online casinos and sportsbook operators. Their offerings include multifunctional platforms, modular payment systems, and a vast portfolio of games from renowned providers, making them a leader in the industry.', style: TextStyle(fontFamily: 'roboto', fontSize: 15)),
                                      ],
                                    )),
                                    SizedBox(width: width*0.025),
                                    InkWell(
                                      splashFactory: NoSplash.splashFactory,
                                      focusColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onTap: () => launchUrl(Uri.parse('https://everymatrix.com/')),
                                      child: Image(image: AssetImage('assets/every.png'), height: 75),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height*0.04),
                                Row(
                                  children: [
                                    InkWell(
                                      splashFactory: NoSplash.splashFactory,
                                      focusColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onTap: () => launchUrl(Uri.parse('https://pronetgaming.com/')),
                                      child: Image(image: AssetImage('assets/pronetgaming_logo.png'), height: 200, fit: BoxFit.cover),
                                    ),
                                    SizedBox(width: width*0.025),
                                    SizedBox(width: width*0.4, child: Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('Pronet Gaming', style: TextStyle(color: Colors.blueGrey, fontFamily: 'pop2', fontSize: 20)),
                                          ],
                                        ),
                                        SizedBox(height: height*0.025),
                                        Text('Pronet Gaming provides comprehensive technological solutions for casino and sportsbook operators. The company offers innovative platforms, advanced analytical tools, and an extensive selection of games, enabling personalization and rapid deployment across diverse markets.', style: TextStyle(fontFamily: 'roboto', fontSize: 15)),
                                      ],
                                    ))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    BottomBar()
                  ],
                ),
              ),
            )
          ],
        ) : CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                delegate: CustomHeaderDelegate(keyMain: controller)),
            SliverFillRemaining(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image(
                                image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/Casino%20-296%20(1).jpg?alt=media&token=527deaf6-73f3-464b-b5cf-6b28d9204a28'),
                                width: width,
                                height: height * 0.7,
                                fit: BoxFit.cover),
                            FadeInUp(
                              delay: Duration(milliseconds: 1000),
                              child: Padding(
                                  padding:
                                  EdgeInsets.only(top: 250, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('BEST',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 35)),
                                      Text('IN THE MARKET',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 35)),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('OUR',
                                style: TextStyle(
                                    fontFamily: 'pop2', fontSize: 30)),
                            SizedBox(width: width * 0.03),
                            Text('PARTNERS',
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
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashFactory: NoSplash.splashFactory,
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () => launchUrl(Uri.parse('https://1xbet.com/en')),
                              child: Image(image: AssetImage('assets/1xbet.png'), height: 75),
                            ),
                            SizedBox(height: height*0.075),
                            InkWell(
                              splashFactory: NoSplash.splashFactory,
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () => launchUrl(Uri.parse('https://everymatrix.com/')),
                              child: Image(image: AssetImage('assets/every.png'), height: 75),
                            ),
                            InkWell(
                              splashFactory: NoSplash.splashFactory,
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onTap: () => launchUrl(Uri.parse('https://pronetgaming.com/')),
                              child: Image(image: AssetImage('assets/pronetgaming_logo.png'), height: 200, fit: BoxFit.cover),
                            ),
                          ],
                        ),

                        SizedBox(height: height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('ABOUT',
                                style: TextStyle(
                                    fontFamily: 'pop2', fontSize: 30)),
                            SizedBox(width: width * 0.03),
                            Text('OUR PARTNERS',
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
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                      splashFactory: NoSplash.splashFactory,
                                      focusColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onTap: () => launchUrl(Uri.parse('https://1xbet.com/en')),
                                      child: Image(image: AssetImage('assets/1xbet.png'), height: 75),
                                    ),
                                    SizedBox(height: height*0.05),
                                    SizedBox(width: width*0.8, child: Text('1Xbet is a leading operator in the gambling industry, offering a wide range of sports betting, live casino games, and online slots. Known for its cutting-edge technology, attractive promotions, and global reach, 1Xbet serves players across more than 50 countries.', style: TextStyle(fontFamily: 'roboto', fontSize: 15)))
                                  ],
                                ),
                                SizedBox(height: height*0.08),
                                Column(
                                  children: [
                                    InkWell(
                                      splashFactory: NoSplash.splashFactory,
                                      focusColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onTap: () => launchUrl(Uri.parse('https://everymatrix.com/')),
                                      child: Image(image: AssetImage('assets/every.png'), height: 75),
                                    ),
                                    SizedBox(height: height*0.05),
                                    SizedBox(width: width*0.8, child: Text('EveryMatrix delivers flexible software and B2B solutions for online casinos and sportsbook operators. Their offerings include multifunctional platforms, modular payment systems, and a vast portfolio of games from renowned providers, making them a leader in the industry.', style: TextStyle(fontFamily: 'roboto', fontSize: 15))),
                                  ],
                                ),
                                SizedBox(height: height*0.04),
                                Column(
                                  children: [
                                    InkWell(
                                      splashFactory: NoSplash.splashFactory,
                                      focusColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onTap: () => launchUrl(Uri.parse('https://pronetgaming.com/')),
                                      child: Image(image: AssetImage('assets/pronetgaming_logo.png'), height: 200, fit: BoxFit.cover),
                                    ),
                                    SizedBox(width: width*0.8, child: Text('Pronet Gaming provides comprehensive technological solutions for casino and sportsbook operators. The company offers innovative platforms, advanced analytical tools, and an extensive selection of games, enabling personalization and rapid deployment across diverse markets.', style: TextStyle(fontFamily: 'roboto', fontSize: 15)))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    BottomBar()
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
