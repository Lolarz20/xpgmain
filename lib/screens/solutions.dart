import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/screens/company.dart';
import 'package:xpgmain/top_bar.dart';

import '../bottom_bar.dart';
import '../drawer.dart';

class Solutions extends StatelessWidget {
  final double offset;
  const Solutions(this.offset, {super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    Future.delayed(Duration(milliseconds: 1500), () {
      if (controller.hasClients) {
        controller.animateTo(offset,
            duration: Duration(milliseconds: 500), curve: Curves.linear);
      }
    });
    GlobalKey<ScaffoldState> key = GlobalKey();
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        drawer: MainDrawer(),
        key: key,
        backgroundColor: Colors.white,
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) => sizingInformation.isDesktop
              ? SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      TopWidget(
                        keyMain: key,
                      ),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution.jpg?alt=media&token=a8c35ded-8582-4abf-8ebf-32adcf252069',
                              ),
                              width: width,
                              height: height * 0.7,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 250, left: 400),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SIMPLE.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 70)),
                                  Text('FLEXIBLE.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 70)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('API',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('INTEGRATION',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      QuoteWidget2(
                          quote:
                              'Adding live casino games to your existing casino platform is the quickest way to higher revenues and better player retention. Our system is extremely flexible and can be integrated within short period of time with virtually any platform on the market via manageable API’s. An application programming interface (API) is an interface implemented by a software program to enable interaction with other software. You maintain control of the data at all time, allowing for optimal security of your database. Your players will be able to login to the system using the same username and password, the same bankroll, bonuses and comp points. You tell us exactly what you need and we’ll make sure you get it.',
                          width: width),
                      SizedBox(height: height * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('INTEGRATION',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('API',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('10',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('LIVE GAMES',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * 0.125,
                                        child: Text(
                                            "Wheel of Fortune, Andar Bahar, Roulette, Blackjack, Baccarat, Dragon Tiger, Sic Bo, Texas Hold'em Bonus, Caribbean Stud Poker, Multiplayer Poker, Multi Games",
                                            style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 12.5,
                                            )),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('4',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('PARTNERS',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange,
                                                size: 12.5),
                                            SizedBox(width: width * 0.01),
                                            Text('Pragmatic Play',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12.5))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange,
                                                size: 12.5),
                                            SizedBox(width: width * 0.01),
                                            Text('Betsoft',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12.5))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange,
                                                size: 12.5),
                                            SizedBox(width: width * 0.01),
                                            Text('Betradar',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12.5))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange,
                                                size: 12.5),
                                            SizedBox(width: width * 0.01),
                                            Text('Concept Gaming',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12.5))
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('500+',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('VIRTUAL GAMES',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.15,
                                  height: height * 0.15,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * 0.125,
                                        child: Text(
                                            'Classic slots, Video slots, Mini slots, Keno, Scratch card, Table games, Video Poker, Virtual sport',
                                            style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 12.5,
                                            )),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Integration',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('PROCESS',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 500),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.01),
                                Text(
                                    'Programming and understanding XPG API calls on our PP servers (PP – PreProduction)',
                                    style: TextStyle(
                                        color: Colors.grey, fontFamily: 'pop2'))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.01),
                                Text(
                                    'Examination of your front end by our support personnel',
                                    style: TextStyle(
                                        color: Colors.grey, fontFamily: 'pop2'))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.01),
                                Text('Opening Live environment on XPG side',
                                    style: TextStyle(
                                        color: Colors.grey, fontFamily: 'pop2'))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.01),
                                Text(
                                    'Integration changes on your side to enable Live environment',
                                    style: TextStyle(
                                        color: Colors.grey, fontFamily: 'pop2'))
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width * 0.24,
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 3,
                                      color:
                                          CupertinoColors.darkBackgroundGray)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('Seamless Wallet',
                                        style: TextStyle(
                                            fontFamily: 'pop2',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.orange)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.2,
                                          child: Text(
                                              'Integration time: 2-3 months.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.2,
                                          child: Text(
                                              'Player performs fewer actions as information updates automatically in the system.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.2,
                                          child: Text(
                                              'Complex API integration process which requires many resources of IT and developers from both companies.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: width * 0.1),
                            Container(
                              width: width * 0.24,
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 3,
                                      color:
                                          CupertinoColors.darkBackgroundGray)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('Balance Transfer',
                                        style: TextStyle(
                                            fontFamily: 'pop2',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.orange)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.2,
                                          child: Text(
                                              'Integration time: 1-2 weeks.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.2,
                                          child: Text(
                                              'Player performs more actions while transfering his funds from one casino system to another.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.2,
                                          child: Text(
                                              'API is very quick and simple, does not require many resources from both companies.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('White',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('LABEL',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution2.jpg?alt=media&token=7e81877f-7426-4cfe-9d2b-2f662e28b321',
                              ),
                              width: width,
                              height: height * 0.8,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 250, left: 400),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('FUNCTIONAL.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 70)),
                                  Text('TRANSPARENT.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 70)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('White Label',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('SOLUTION',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      SizedBox(
                        width: width * 0.65,
                        child: Column(
                          children: [
                            Text(
                                textAlign: TextAlign.center,
                                'As with all of our business models, we provide our White Label Partners full technical support around the clock and allow you to maintain full, secure control of your valuable database. No other live casino system on the market can offer the type of instant services we are set up to provide White Label entrepreneurs. Contact us now for details on how you can quickly and easily start your own White Label Live Casino website.',
                                style: TextStyle(
                                    fontFamily: 'pop2', color: Colors.grey)),
                            SizedBox(height: height * 0.01),
                            Text(
                                textAlign: TextAlign.center,
                                'Our flexible gaming system can be customized to meet each client’s specific needs in just about any language. Our multi-lingual system currently supports English, Italian, Spanish, French, Hungarian, Turkish, Greek, French, German, Portuguese, Russian, Chinese, Japanese, Thay, Malay and Korean.',
                                style: TextStyle(
                                    fontFamily: 'pop2', color: Colors.grey)),
                            SizedBox(height: height * 0.01),
                            Text(
                                textAlign: TextAlign.center,
                                'We can connect you to our Live video stream, develop a full website according to your specifications, provide translation services and connect you to our advanced back office.',
                                style: TextStyle(
                                    fontFamily: 'pop2', color: Colors.grey)),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 600,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Header Section
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.orange, // Light orange
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Row(
                                        children: const [
                                          Text(
                                            '01',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                fontFamily: 'pop2'),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'STAND ALONE WEBSITE',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                fontFamily: 'pop2'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Content Section
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Stand Alone Agent System is a meticulously designed turnkey solution for gaming halls and entrepreneurs working on cash market anywhere in the world. In essence, it is a readymade custom website with XPG Live casino system, complete selection of games, and a user-friendly, intuitive back office to manage players, finances, and statistics. With XPG’s Stand Alone Agent System, you will be able to start your fully operational online casino in 7-10 days with almost no effort on your part.',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                height: 1.5,
                                                fontFamily: 'pop2'),
                                          ),
                                          // SizedBox(height: 16),
                                          // // Image Section
                                          // Image(
                                          //   image: NetworkImage(
                                          //     'https://via.placeholder.com/600x200.png?text=Your+Image+Here',
                                          //   ),
                                          //   fit: BoxFit.cover,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 600,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Header Section
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.orange, // Light orange
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Row(
                                        children: const [
                                          Text(
                                            '02',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                fontFamily: 'pop2'),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'DOWNLOAD CLIENT',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                fontFamily: 'pop2'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Content Section
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'XPG also offers Download client for operators, working in regions with bad internet connection. It is very popular in Asian countries. Players have to download a small installation file from the website of your casino to their devices, install our system and start playing. The process is downright simple and takes a few minutes. It will take us around 7-10 working days maximum, or even faster, to prepare the DC for you, so you will be ready to start operation.',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                height: 1.5,
                                                fontFamily: 'pop2'),
                                          ),
                                          // SizedBox(height: 16),
                                          // // Image Section
                                          // Image(
                                          //   image: NetworkImage(
                                          //     'https://via.placeholder.com/600x200.png?text=Your+Image+Here',
                                          //   ),
                                          //   fit: BoxFit.cover,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Mobile',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('SOLUTIONS',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                            textAlign: TextAlign.center,
                            'XPG demonstrates evolutionary approach to mobile development by creating HTML5 Mobile solution. Many of its features have been adapted with the consideration of running on low powered devices, such as Smart Phones and Tablets. Importantly whilst running within a web browser, it is not tied to the underlying operating system. It is already supported in the latest web browsers and provides unparalleled Live gaming experience. For those who still prefer to download the app, XPG has created a user-friendly and reliable Mobile app for Android devices with a clear interface and intuitive navigation.',
                            style: TextStyle(
                                fontFamily: 'pop2', color: Colors.grey)),
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.public,
                                title: 'PLAY ANYWHERE AT ANY TIME',
                              ),
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.devices,
                                title: 'PLAY ON ANY DEVICE',
                              ),
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.language,
                                title: 'PLAY IN ANY BROWSER',
                              ),
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.videogame_asset,
                                title: 'PLAY ANY GAME OF CHOICE',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Private',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('TABLES',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution3.jpg?alt=media&token=1793a58e-c792-4b86-b071-cb3a208870a5',
                              ),
                              width: width,
                              height: height * 0.7,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 250, left: 400),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('EFFICIENT.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 70)),
                                  Text('CUSTOMIZED.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 70)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('About',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('PRIVATE TABLES',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 200, vertical: 25),
                          child: Card(
                            elevation: 10,
                            color: Colors.white,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 3)),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: width * 0.3,
                                          child: Text(
                                            textAlign: TextAlign.left,
                                            'If you want an ultimate private table solution, we offer a winning option. Our Live casino system has the widest selection of Live games on the market, and all of them can be available for your players on private tables. We also offer a line of table customization options of different scale to raise you brand awareness fundamentally. With XPG, everything is negotiable and ready to be tailored to your needs, including creating a new game from scratch for your private table exclusively. No matter what games and customization options you choose, it will be a winning combination that lands higher retention rates and more profit to your casino system.',
                                            style: TextStyle(
                                                fontFamily: 'pop2',
                                                fontSize: 15,
                                                color: CupertinoColors
                                                    .darkBackgroundGray),
                                          ),
                                        ),
                                        SizedBox(height: height * 0.01),
                                        Text(
                                          'MOST COMMON CUSTOMIZATION OPTIONS:',
                                          style: TextStyle(
                                            color: CupertinoColors
                                                .darkBackgroundGray,
                                            fontFamily: 'pop2',
                                          ),
                                        ),
                                        SizedBox(height: height * 0.01),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Change table watermark in UI',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text('Place logo on a game',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Brand dealer outfit, cards, etc.',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Choose particular dealer',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Choose the language dealer speaks',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Place advertising and Live promotions',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text('And more!',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.4,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                              image: NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/ROULETTE1-ezgif.com-gif-to-webp-converter.webp?alt=media&token=eedf94fd-2f7c-4b34-9386-8fc13feb72b7',
                                          )),
                                        )
                                        //child: playerWidget),
                                        ),
                                  ],
                                )),
                          )),
                      SizedBox(height: height * 0.05),
                      BottomBar()
                    ],
                  ),
                )
              : SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      TopWidget(
                        keyMain: key,
                      ),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution.jpg?alt=media&token=a8c35ded-8582-4abf-8ebf-32adcf252069',
                              ),
                              width: width,
                              height: height * 0.7,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 150, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SIMPLE.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35)),
                                  Text('FLEXIBLE.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('API',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.01),
                          Text('INTEGRATION',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      QuoteWidget2(
                          quote:
                              'Adding live casino games to your existing casino platform is the quickest way to higher revenues and better player retention. Our system is extremely flexible and can be integrated within short period of time with virtually any platform on the market via manageable API’s. An application programming interface (API) is an interface implemented by a software program to enable interaction with other software. You maintain control of the data at all time, allowing for optimal security of your database. Your players will be able to login to the system using the same username and password, the same bankroll, bonuses and comp points. You tell us exactly what you need and we’ll make sure you get it.',
                          width: width),
                      SizedBox(height: height * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('INTEGRATION',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('API',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('10',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('LIVE GAMES',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * 0.8,
                                        child: Text(
                                            "Wheel of Fortune, Andar Bahar, Roulette, Blackjack, Baccarat, Dragon Tiger, Sic Bo, Texas Hold'em Bonus, Caribbean Stud Poker, Multiplayer Poker, Multi Games",
                                            style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 12.5,
                                            )),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('4',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('PARTNERS',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange, size: 20),
                                            SizedBox(width: width * 0.01),
                                            Text('Pragmatic Play',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 20))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange, size: 20),
                                            SizedBox(width: width * 0.01),
                                            Text('Betsoft',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 20))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange, size: 20),
                                            SizedBox(width: width * 0.01),
                                            Text('Betradar',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 20))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: width * 0.025),
                                            Icon(Icons.check_box_outlined,
                                                color: Colors.orange, size: 20),
                                            SizedBox(width: width * 0.01),
                                            Text('Concept Gaming',
                                                style: TextStyle(
                                                    color: CupertinoColors
                                                        .darkBackgroundGray,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2',
                                                    fontSize: 20))
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('500+',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: 'pop2',
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)),
                                      Text('VIRTUAL GAMES',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  )),
                              Container(
                                  width: width * 0.9,
                                  height: height * 0.3,
                                  color: Colors.grey[200],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * 0.8,
                                        child: Text(
                                            'Classic slots, Video slots, Mini slots, Keno, Scratch card, Table games, Video Poker, Virtual sport',
                                            style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 12.5,
                                            )),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Integration',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('PROCESS',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.05),
                                SizedBox(
                                  width: width * 0.7,
                                  child: Text(
                                      'Programming and understanding XPG API calls on our PP servers (PP – PreProduction)',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'pop2')),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.05),
                                SizedBox(
                                  width: width * 0.7,
                                  child: Text(
                                      'Examination of your front end by our support personnel',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'pop2')),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.05),
                                SizedBox(
                                  width: width * 0.7,
                                  child: Text(
                                      'Opening Live environment on XPG side',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'pop2')),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.orange),
                                SizedBox(width: width * 0.05),
                                SizedBox(
                                  width: width * 0.7,
                                  child: Text(
                                      'Integration changes on your side to enable Live environment',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'pop2')),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width * 0.9,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 3,
                                      color:
                                          CupertinoColors.darkBackgroundGray)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('Seamless Wallet',
                                        style: TextStyle(
                                            fontFamily: 'pop2',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.orange)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'Integration time: 2-3 months.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'Player performs fewer actions as information updates automatically in the system.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'Complex API integration process which requires many resources of IT and developers from both companies.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            Container(
                              width: width * 0.9,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 3,
                                      color:
                                          CupertinoColors.darkBackgroundGray)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('Balance Transfer',
                                        style: TextStyle(
                                            fontFamily: 'pop2',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.orange)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'Integration time: 1-2 weeks.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'Player performs more actions while transfering his funds from one casino system to another.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.orange),
                                        SizedBox(width: width * 0.01),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'API is very quick and simple, does not require many resources from both companies.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'pop2')),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('White',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('LABEL',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution2.jpg?alt=media&token=7e81877f-7426-4cfe-9d2b-2f662e28b321',
                              ),
                              width: width,
                              height: height * 0.7,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 200, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('FUNCTIONAL.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35)),
                                  Text('TRANSPARENT.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('White Label',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 20)),
                          SizedBox(width: width * 0.0025),
                          Text('SOLUTION',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 20,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      SizedBox(
                        width: width * 0.65,
                        child: Column(
                          children: [
                            Text(
                                textAlign: TextAlign.center,
                                'As with all of our business models, we provide our White Label Partners full technical support around the clock and allow you to maintain full, secure control of your valuable database. No other live casino system on the market can offer the type of instant services we are set up to provide White Label entrepreneurs. Contact us now for details on how you can quickly and easily start your own White Label Live Casino website.',
                                style: TextStyle(
                                    fontFamily: 'pop2', color: Colors.grey)),
                            SizedBox(height: height * 0.01),
                            Text(
                                textAlign: TextAlign.center,
                                'Our flexible gaming system can be customized to meet each client’s specific needs in just about any language. Our multi-lingual system currently supports English, Italian, Spanish, French, Hungarian, Turkish, Greek, French, German, Portuguese, Russian, Chinese, Japanese, Thay, Malay and Korean.',
                                style: TextStyle(
                                    fontFamily: 'pop2', color: Colors.grey)),
                            SizedBox(height: height * 0.01),
                            Text(
                                textAlign: TextAlign.center,
                                'We can connect you to our Live video stream, develop a full website according to your specifications, provide translation services and connect you to our advanced back office.',
                                style: TextStyle(
                                    fontFamily: 'pop2', color: Colors.grey)),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Header Section
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.orange, // Light orange
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Row(
                                        children: const [
                                          Text(
                                            '01',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                fontFamily: 'pop2'),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'STAND ALONE WEBSITE',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                fontFamily: 'pop2'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Content Section
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Stand Alone Agent System is a meticulously designed turnkey solution for gaming halls and entrepreneurs working on cash market anywhere in the world. In essence, it is a readymade custom website with XPG Live casino system, complete selection of games, and a user-friendly, intuitive back office to manage players, finances, and statistics. With XPG’s Stand Alone Agent System, you will be able to start your fully operational online casino in 7-10 days with almost no effort on your part.',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                height: 1.5,
                                                fontFamily: 'pop2'),
                                          ),
                                          // SizedBox(height: 16),
                                          // // Image Section
                                          // Image(
                                          //   image: NetworkImage(
                                          //     'https://via.placeholder.com/600x200.png?text=Your+Image+Here',
                                          //   ),
                                          //   fit: BoxFit.cover,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Header Section
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.orange, // Light orange
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Row(
                                        children: const [
                                          Text(
                                            '02',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                fontFamily: 'pop2'),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'DOWNLOAD CLIENT',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                fontFamily: 'pop2'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Content Section
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'XPG also offers Download client for operators, working in regions with bad internet connection. It is very popular in Asian countries. Players have to download a small installation file from the website of your casino to their devices, install our system and start playing. The process is downright simple and takes a few minutes. It will take us around 7-10 working days maximum, or even faster, to prepare the DC for you, so you will be ready to start operation.',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                height: 1.5,
                                                fontFamily: 'pop2'),
                                          ),
                                          // SizedBox(height: 16),
                                          // // Image Section
                                          // Image(
                                          //   image: NetworkImage(
                                          //     'https://via.placeholder.com/600x200.png?text=Your+Image+Here',
                                          //   ),
                                          //   fit: BoxFit.cover,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Mobile',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('SOLUTIONS',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                            textAlign: TextAlign.center,
                            'XPG demonstrates evolutionary approach to mobile development by creating HTML5 Mobile solution. Many of its features have been adapted with the consideration of running on low powered devices, such as Smart Phones and Tablets. Importantly whilst running within a web browser, it is not tied to the underlying operating system. It is already supported in the latest web browsers and provides unparalleled Live gaming experience. For those who still prefer to download the app, XPG has created a user-friendly and reliable Mobile app for Android devices with a clear interface and intuitive navigation.',
                            style: TextStyle(
                                fontFamily: 'pop2', color: Colors.grey)),
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.public,
                                title: 'PLAY ANYWHERE AT ANY TIME',
                              ),
                              SizedBox(height: height * 0.05),
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.devices,
                                title: 'PLAY ON ANY DEVICE',
                              ),
                              SizedBox(height: height * 0.05),
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.language,
                                title: 'PLAY IN ANY BROWSER',
                              ),
                              SizedBox(height: height * 0.05),
                              _buildFeatureCard(
                                width: width,
                                icon: Icons.videogame_asset,
                                title: 'PLAY ANY GAME OF CHOICE',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Private',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 35)),
                          SizedBox(width: width * 0.0025),
                          Text('TABLES',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 35,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution3.jpg?alt=media&token=1793a58e-c792-4b86-b071-cb3a208870a5',
                              ),
                              width: width,
                              height: height * 0.7,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 150, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('EFFICIENT.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35)),
                                  Text('CUSTOMIZED.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('About',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 20)),
                          SizedBox(width: width * 0.0025),
                          Text('PRIVATE TABLES',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 20,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 25),
                          child: Card(
                            elevation: 10,
                            color: Colors.white,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 3)),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                            textAlign: TextAlign.left,
                                            'If you want an ultimate private table solution, we offer a winning option. Our Live casino system has the widest selection of Live games on the market, and all of them can be available for your players on private tables. We also offer a line of table customization options of different scale to raise you brand awareness fundamentally. With XPG, everything is negotiable and ready to be tailored to your needs, including creating a new game from scratch for your private table exclusively. No matter what games and customization options you choose, it will be a winning combination that lands higher retention rates and more profit to your casino system.',
                                            style: TextStyle(
                                                fontFamily: 'pop2',
                                                fontSize: 15,
                                                color: CupertinoColors
                                                    .darkBackgroundGray),
                                          ),
                                        ),
                                        SizedBox(height: height * 0.01),
                                        Text(
                                          'MOST COMMON CUSTOMIZATION OPTIONS:',
                                          style: TextStyle(
                                            color: CupertinoColors
                                                .darkBackgroundGray,
                                            fontFamily: 'pop2',
                                          ),
                                        ),
                                        SizedBox(height: height * 0.01),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Change table watermark in UI',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.5,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text('Place logo on a game',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.5,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Brand dealer outfit, cards, etc.',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.5,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Choose particular dealer',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.5,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Choose the language dealer speaks',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.5,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text(
                                                      'Place advertising and Live promotions',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.5,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.check_box_outlined,
                                                      color: Colors.orange),
                                                  SizedBox(width: width * 0.01),
                                                  Text('And more!',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.5,
                                                          fontFamily: 'pop2'))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.8,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                              image: NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/ROULETTE1-ezgif.com-gif-to-webp-converter.webp?alt=media&token=eedf94fd-2f7c-4b34-9386-8fc13feb72b7',
                                          )),
                                        )
                                        //child: playerWidget),
                                        ),
                                  ],
                                )),
                          )),
                      SizedBox(height: height * 0.05),
                      BottomBar()
                    ],
                  ),
                ),
        ));
  }

  Widget _buildFeatureCard(
      {required IconData icon, required String title, required double width}) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: sizingInformation.isDesktop ? width * 0.2 : width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.orangeAccent,
                  size: 48,
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'pop2'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
