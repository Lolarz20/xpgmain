import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

class AboutXpg extends StatelessWidget {
  const AboutXpg({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final key = GlobalKey<ScaffoldState>();
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      key: key,
      body: ResponsiveBuilder(
          builder: (context, sizingInformation) => sizingInformation.isDesktop
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      TopWidget(keyMain: key),
                      SizedBox(height: height * 0.01),
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fdealers.jpg?alt=media&token=6ecf605d-8bfe-42cd-a7c6-f7d7ba748844',
                                  ),
                                  height: height * 0.75,
                                  width: width * 0.8)),
                          Container(
                            height: height * 0.75,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              color: CupertinoColors.darkBackgroundGray
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned.fill(
                              child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: width * 0.5,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'XPG is a unique Live Dealer Casino software provider that has been around for over a decade.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2',
                                        fontSize: 40),
                                  ),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: width * 0.5,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'It belongs to a cohort of companies that makes the Live casino industry what it is now – an ultimate modern replacement for gambling in a real land based casino.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2',
                                        fontSize: 32.5),
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height * 0.30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.blueGrey)),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Row(
                                  children: [
                                    Icon(Icons.lightbulb,
                                        color: Colors.blueGrey, size: 100),
                                    SizedBox(width: width * 0.05),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('OUR VISION',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'pop2',
                                                fontSize: 30)),
                                        SizedBox(
                                          width: width * 0.25,
                                          child: Text(
                                              'To become the number one provider in the Live casino industry. To always stay ahead of the curve, developing and implementing new services and products',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'pop2',
                                                  fontSize: 20)),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(width: width * 0.05),
                          Container(
                            height: height * 0.30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.blueGrey)),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Row(
                                  children: [
                                    Icon(Icons.check_circle,
                                        color: Colors.blueGrey, size: 100),
                                    SizedBox(width: width * 0.05),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('OUR MISSION',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'pop2',
                                                fontSize: 30)),
                                        SizedBox(
                                          width: width * 0.25,
                                          child: Text(
                                              'Increase player retention, profit, and brand recognition of the operators by providing sophisticated and flexible solutions and a modern Live casino system with the widest selection of quality games on the market for their players.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'pop2',
                                                  fontSize: 20)),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('CORE',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('VALUES',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.open_in_full,
                                  color: Colors.blue, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.15,
                                child: Text('FLEXIBILITY AND SIMPLICITY',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.125,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that deliver the highest client satisfaction possible',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.settings,
                                  color: Colors.green, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.15,
                                child: Text('DEVELOPMENT AND INNOVATION',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.125,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that determine continuous advantages over competitors',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.group,
                                  color: Colors.blueGrey, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.15,
                                child: Text('PROFESSIONALISM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.125,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that guarantees long-term business success',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.visibility_sharp,
                                  color: Colors.indigo, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.15,
                                child: Text('TRANSPARENCY',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.125,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that builds trust',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('BENEFITS',
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
                      Container(
                        width: width * 0.6,
                        height: height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('FOR OPERATORS',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 30,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Flexible and cost-effective solution tailored to all your needs',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'The widest selection of Live games on the market that is continuously updated',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text('Individual approach',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Various customization options to boost brand awareness',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text('High retention rates',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            '24/7 Live games streaming and support',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: height * 0.5,
                                width: 5,
                                color: Colors.blueGrey,
                              ),
                              Column(
                                children: [
                                  Text('FOR PLAYERS',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 30,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'A pure Live gaming experience, created in our vast and well-equipped studios set in Bulgaria and Romania',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Communication and company of engaging and chatty dealers',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Widest selection of games with unique features and side bets',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Eye-popping partner slots and other virtual games',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text('User-friendly interface',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Cross-platform system – with the same login details for PC, smartphone, tablet',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fdealers.jpg?alt=media&token=6ecf605d-8bfe-42cd-a7c6-f7d7ba748844',
                                  ),
                                  height: height * 0.75,
                                  width: width * 0.9)),
                          Container(
                            height: height * 0.75,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: CupertinoColors.darkBackgroundGray
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned.fill(
                              child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: width * 0.5,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'XPG is a unique Live Dealer Casino software provider that has been around for over a decade.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2',
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: width * 0.5,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'It belongs to a cohort of companies that makes the Live casino industry what it is now – an ultimate modern replacement for gambling in a real land based casino.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2',
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 3)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.lightbulb,
                                        color: Colors.blueGrey, size: 50),
                                    SizedBox(width: width * 0.05),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('OUR VISION',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'pop2',
                                                fontSize: 20)),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'To become the number one provider in the Live casino industry. To always stay ahead of the curve, developing and implementing new services and products',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'pop2',
                                                  fontSize: 12.5)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 3)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.check_circle,
                                        color: Colors.blueGrey, size: 50),
                                    SizedBox(width: width * 0.05),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('OUR MISSION',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'pop2',
                                                fontSize: 20)),
                                        SizedBox(
                                          width: width * 0.7,
                                          child: Text(
                                              'Increase player retention, profit, and brand recognition of the operators by providing sophisticated and flexible solutions and a modern Live casino system with the widest selection of quality games on the market for their players.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'pop2',
                                                  fontSize: 12.5)),
                                        )
                                      ],
                                    )
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
                        children: [
                          Text('CORE',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('VALUES',
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.open_in_full,
                                  color: Colors.blue, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.5,
                                child: Text('FLEXIBILITY AND SIMPLICITY',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.4,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that deliver the highest client satisfaction possible',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Column(
                            children: [
                              Icon(Icons.settings,
                                  color: Colors.green, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.5,
                                child: Text('DEVELOPMENT AND INNOVATION',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.4,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that determine continuous advantages over competitors',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Column(
                            children: [
                              Icon(Icons.group,
                                  color: Colors.blueGrey, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.5,
                                child: Text('PROFESSIONALISM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.4,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that guarantees long-term business success',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Column(
                            children: [
                              Icon(Icons.visibility_sharp,
                                  color: Colors.indigo, size: 50),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.5,
                                child: Text('TRANSPARENCY',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'pop2',
                                        fontSize: 22.5)),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: width * 0.4,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'that builds trust',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pop2',
                                        fontSize: 12.5)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('BENEFITS',
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
                      Container(
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('FOR OPERATORS',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 25,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Flexible and cost-effective solution tailored to all your needs',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'The widest selection of Live games on the market that is continuously updated',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text('Individual approach',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Various customization options to boost brand awareness',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text('High retention rates',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            '24/7 Live games streaming and support',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Container(
                                width: width * 0.5,
                                height: 5,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 25),
                              Column(
                                children: [
                                  Text('FOR PLAYERS',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 25,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'A pure Live gaming experience, created in our vast and well-equipped studios set in Bulgaria and Romania',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Communication and company of engaging and chatty dealers',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Widest selection of games with unique features and side bets',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Eye-popping partner slots and other virtual games',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text('User-friendly interface',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.blueGrey),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Cross-platform system – with the same login details for PC, smartphone, tablet',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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
