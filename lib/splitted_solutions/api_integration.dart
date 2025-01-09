import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

import '../screens/company.dart';

class ApiIntegration extends StatelessWidget {
  const ApiIntegration({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      body: ResponsiveBuilder(
          builder: (context, sizingInformation) => sizingInformation.isDesktop
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      TopWidget(keyMain: key),
                      SizedBox(height: height * 0.01),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution.jpg?alt=media&token=a8c30ded-8582-4abf-8ebf-32adcf252069',
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
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('INTEGRATION',
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
                                              color: Colors.blueGrey,
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
                                              color: Colors.blueGrey,
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
                                              color: Colors.blueGrey,
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
                                              color: Colors.blueGrey,
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
                                                color: Colors.blueGrey,
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
                                                color: Colors.blueGrey,
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
                                                color: Colors.blueGrey,
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
                                                color: Colors.blueGrey,
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
                                              color: Colors.blueGrey,
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
                          Text('INTEGRATION',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('PROCESS',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 500),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.blueGrey),
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
                                    color: Colors.blueGrey),
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
                                    color: Colors.blueGrey),
                                SizedBox(width: width * 0.01),
                                Text('Opening Live environment on XPG side',
                                    style: TextStyle(
                                        color: Colors.grey, fontFamily: 'pop2'))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined,
                                    color: Colors.blueGrey),
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
                                            color: Colors.blueGrey)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                      SizedBox(height: height * 0.01),
                      BottomBar()
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      TopWidget(keyMain: key),
                      SizedBox(height: height * 0.01),
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution.jpg?alt=media&token=a8c30ded-8582-4abf-8ebf-32adcf252069',
                              ),
                              width: width,
                              height: height * 0.7,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 250, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SIMPLE.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50)),
                                  Text('FLEXIBLE.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50)),
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
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.01),
                          Text('INTEGRATION',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 30,
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
                                              color: Colors.blueGrey,
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
                                              color: Colors.blueGrey,
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
                                              color: Colors.blueGrey,
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
                                              color: Colors.blueGrey,
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
                                                color: Colors.blueGrey,
                                                size: 20),
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
                                                color: Colors.blueGrey,
                                                size: 20),
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
                                                color: Colors.blueGrey,
                                                size: 20),
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
                                                color: Colors.blueGrey,
                                                size: 20),
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
                                              color: Colors.blueGrey,
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
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('PROCESS',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 30,
                                  color: Colors.blueGrey,
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
                                    color: Colors.blueGrey),
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
                                    color: Colors.blueGrey),
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
                                    color: Colors.blueGrey),
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
                                    color: Colors.blueGrey),
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
                                            color: Colors.blueGrey)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey)),
                                    Row(
                                      children: [
                                        Icon(Icons.check_box_outlined,
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                      SizedBox(height: height * 0.01),
                      BottomBar()
                    ],
                  ),
                )),
    );
  }
}
