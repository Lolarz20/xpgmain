import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

import '../screens/company.dart';

class FairGaming extends StatelessWidget {
  const FairGaming({super.key});

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
              ? CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                        delegate: CustomHeaderDelegate(keyMain: key)),
                    SliverFillRemaining(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('FAIR',
                                    style: TextStyle(
                                        fontFamily: 'pop2', fontSize: 30)),
                                SizedBox(width: width * 0.005),
                                Text('GAMING',
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
                              height: height * 0.4,
                              width: width * 0.775,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.25,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('ABOUT',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontFamily: 'pop2',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          SizedBox(height: height * 0.05),
                                          SizedBox(
                                            width: width * 0.2,
                                            child: Text(
                                                'Being well-known for its outstanding reputation in the industry, XPG guarantees the transparency and fairness of its software, maintains and manages its Fair Gaming principles, which are continually monitored, improved and updated. As a premier B2B provider of Live dealer casino system and games, XPG has no direct relationship with the players, however an impeccable reputation and high credibility remain the major factors for creating and maintaining a reliable, truly fair, transparent, and secure gambling environment in our business. Therefore, developing and promoting the concept of Fair Gaming principles is an important part for the creation of our gaming environment founded on the spirit of fair play.',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.5,
                                    width: 5,
                                    color: Colors.blueGrey,
                                  ),
                                  SizedBox(
                                    width: width * 0.25,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('CERTIFICATION AND REGULATION',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontFamily: 'pop2',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          SizedBox(height: height * 0.05),
                                          SizedBox(
                                            width: width * 0.2,
                                            child: Text(
                                                'Understanding our responsibility on the regulated gaming market, XPG adheres to strict rules and regulations set by independent organizations that monitor and audit the gameplay on our system to ensure the highest standards are maintained. As part of the certification process, XPG Live dealer casino system is officially certified by iTech Labs, which is one of the most reputable independent certifying bodies with more than 12 years track record and customers worldwide. Therefore, all XPG games are put through rigorous independent testing by independent 3rd parties.',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.5,
                                    width: 5,
                                    color: Colors.blueGrey,
                                  ),
                                  SizedBox(
                                    width: width * 0.25,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('RESPONSIBLE GAMING TOOLS',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontFamily: 'pop2',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          SizedBox(height: height * 0.05),
                                          SizedBox(
                                            width: width * 0.2,
                                            child: Text(
                                                "As an integral part of our Live system software, XPG responsible gaming tools include a self-exclusion option, compulsive gamblers' interface, age verification option, and a time-out system. Taking care of our operators, we provide professional support service to be assured that our customers have no problem with the usage of the responsible gaming tools.",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12)),
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
                                Text('OUR',
                                    style: TextStyle(
                                        fontFamily: 'pop2', fontSize: 30)),
                                SizedBox(width: width * 0.005),
                                Text('RESPONSIBILITY',
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
                              children: [
                                Container(
                                  width: width * 0.6,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.5),
                                      color: Colors.grey[200]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Row(
                                      children: [
                                        Text('01',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontFamily: 'pop2',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25)),
                                        SizedBox(width: width * 0.05),
                                        Text(
                                            'Anti-Fraud and Anti-Money Laundering Policy ',
                                            style: TextStyle(
                                                color: CupertinoColors
                                                    .darkBackgroundGray,
                                                fontFamily: 'pop2',
                                                fontSize: 25)),
                                      ],
                                    ),
                                  ),
                                ),
                                QuoteWidget2(
                                    width: width,
                                    quote:
                                        'One of the XPG core values is our moral high ground to our partners, our operators, and their players. As a responsible software provider that does not tolerate fraudulent activity, XPG specially designed a complex and extremely powerful monitoring mechanism to detect and protect from fraud and money laundering. Using comprehensive monitoring of transactions and controlling gaming behavior, XPG guarantees an elevated level of security and complete safety from fraud.')
                              ],
                            ),
                            Column(children: [
                              Container(
                                width: width * 0.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('02',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                      SizedBox(width: width * 0.05),
                                      Text('Compulsive Gambling Prevention',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'Thinking about our operators and their players, we want to ensure that people always enjoy their experience with XPG Live dealer casino system. At the same time, we admit whilst the majority of people do gamble for entertainment, for some it can spiral out of control. This is the reason why we provide our customers with responsible gaming resources by providing links with all necessary information on the risks of gambling and how to gamble safely, including self-evaluation surveys. Our operators are able to check players’ activity and analyze behavior standards that can help to identify a potential risk.'),
                            ]),
                            Column(children: [
                              Container(
                                width: width * 0.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('03',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                      SizedBox(width: width * 0.05),
                                      Text('Underage play',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'XPG has taken steps to confirm that our system and the websites that use our software do not attract people underage in their jurisdiction. With the use of a 3rd party age verification system, our Live dealer casino system demands strict player’s credentials examination.'),
                            ]),
                            Column(children: [
                              Container(
                                width: width * 0.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('04',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                      SizedBox(width: width * 0.05),
                                      Text('Limits',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'XPG provides functionality for setting gameplay limits that can be controlled by the player. These limits include bet limits per session, day, week, month, session length, bet limits for a specific game and maximum single bet by game. XPG also offers the ability to provide in-game messages when limits have been reached and what the limits are.'),
                            ]),
                            Column(children: [
                              Container(
                                width: width * 0.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('05',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                      SizedBox(width: width * 0.05),
                                      Text('Self-exclusion tools',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 25)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'Live games take place in strictly controlled studios and they are fully recorded and monitored. As a result, fairness and the random nature of the products offered are inspected and updated with the latest methods and sophisticated technology. Not only is it our mission to provide operators with the most entertaining gaming system, but it is also our duty to prevent compulsive usage and underage access of our gaming products.'),
                            ]),
                            SizedBox(height: height * 0.01),
                            BottomBar()
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                        delegate: CustomHeaderDelegate(keyMain: key)),
                    SliverFillRemaining(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('FAIR',
                                    style: TextStyle(
                                        fontFamily: 'pop2', fontSize: 30)),
                                SizedBox(width: width * 0.005),
                                Text('GAMING',
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
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: width * 0.8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('ABOUT',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontFamily: 'pop2',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          SizedBox(height: height * 0.05),
                                          SizedBox(
                                            width: width * 0.8,
                                            child: Text(
                                                'Being well-known for its outstanding reputation in the industry, XPG guarantees the transparency and fairness of its software, maintains and manages its Fair Gaming principles, which are continually monitored, improved and updated. As a premier B2B provider of Live dealer casino system and games, XPG has no direct relationship with the players, however an impeccable reputation and high credibility remain the major factors for creating and maintaining a reliable, truly fair, transparent, and secure gambling environment in our business. Therefore, developing and promoting the concept of Fair Gaming principles is an important part for the creation of our gaming environment founded on the spirit of fair play.',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.5,
                                    height: 5,
                                    color: Colors.blueGrey,
                                  ),
                                  SizedBox(
                                    width: width * 0.8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('CERTIFICATION AND REGULATION',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontFamily: 'pop2',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          SizedBox(height: height * 0.05),
                                          SizedBox(
                                            width: width * 0.8,
                                            child: Text(
                                                'Understanding our responsibility on the regulated gaming market, XPG adheres to strict rules and regulations set by independent organizations that monitor and audit the gameplay on our system to ensure the highest standards are maintained. As part of the certification process, XPG Live dealer casino system is officially certified by iTech Labs, which is one of the most reputable independent certifying bodies with more than 12 years track record and customers worldwide. Therefore, all XPG games are put through rigorous independent testing by independent 3rd parties.',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.5,
                                    height: 5,
                                    color: Colors.blueGrey,
                                  ),
                                  SizedBox(
                                    width: width * 0.8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('RESPONSIBLE GAMING TOOLS',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontFamily: 'pop2',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          SizedBox(height: height * 0.05),
                                          SizedBox(
                                            width: width * 0.8,
                                            child: Text(
                                                "As an integral part of our Live system software, XPG responsible gaming tools include a self-exclusion option, compulsive gamblers' interface, age verification option, and a time-out system. Taking care of our operators, we provide professional support service to be assured that our customers have no problem with the usage of the responsible gaming tools.",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontFamily: 'pop2',
                                                    fontSize: 12)),
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
                                Text('OUR',
                                    style: TextStyle(
                                        fontFamily: 'pop2', fontSize: 30)),
                                SizedBox(width: width * 0.005),
                                Text('RESPONSIBILITY',
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
                              children: [
                                Container(
                                  width: width * 0.9,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.5),
                                      color: Colors.grey[200]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Row(
                                      children: [
                                        Text('01',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontFamily: 'pop2',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10)),
                                        SizedBox(width: width * 0.05),
                                        Text(
                                            'Anti-Fraud and Anti-Money Laundering Policy ',
                                            style: TextStyle(
                                                color: CupertinoColors
                                                    .darkBackgroundGray,
                                                fontFamily: 'pop2',
                                                fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                ),
                                QuoteWidget2(
                                    width: width,
                                    quote:
                                        'One of the XPG core values is our moral high ground to our partners, our operators, and their players. As a responsible software provider that does not tolerate fraudulent activity, XPG specially designed a complex and extremely powerful monitoring mechanism to detect and protect from fraud and money laundering. Using comprehensive monitoring of transactions and controlling gaming behavior, XPG guarantees an elevated level of security and complete safety from fraud.')
                              ],
                            ),
                            Column(children: [
                              Container(
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('02',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.5)),
                                      SizedBox(width: width * 0.05),
                                      Text('Compulsive Gambling Prevention',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 12.5)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'Thinking about our operators and their players, we want to ensure that people always enjoy their experience with XPG Live dealer casino system. At the same time, we admit whilst the majority of people do gamble for entertainment, for some it can spiral out of control. This is the reason why we provide our customers with responsible gaming resources by providing links with all necessary information on the risks of gambling and how to gamble safely, including self-evaluation surveys. Our operators are able to check players’ activity and analyze behavior standards that can help to identify a potential risk.'),
                            ]),
                            Column(children: [
                              Container(
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('03',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                      SizedBox(width: width * 0.05),
                                      Text('Underage play',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 15)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'XPG has taken steps to confirm that our system and the websites that use our software do not attract people underage in their jurisdiction. With the use of a 3rd party age verification system, our Live dealer casino system demands strict player’s credentials examination.'),
                            ]),
                            Column(children: [
                              Container(
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('04',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                      SizedBox(width: width * 0.05),
                                      Text('Limits',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 15)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'XPG provides functionality for setting gameplay limits that can be controlled by the player. These limits include bet limits per session, day, week, month, session length, bet limits for a specific game and maximum single bet by game. XPG also offers the ability to provide in-game messages when limits have been reached and what the limits are.'),
                            ]),
                            Column(children: [
                              Container(
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text('05',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'pop2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                      SizedBox(width: width * 0.05),
                                      Text('Self-exclusion tools',
                                          style: TextStyle(
                                              color: CupertinoColors
                                                  .darkBackgroundGray,
                                              fontFamily: 'pop2',
                                              fontSize: 15)),
                                    ],
                                  ),
                                ),
                              ),
                              QuoteWidget2(
                                  width: width,
                                  quote:
                                      'Live games take place in strictly controlled studios and they are fully recorded and monitored. As a result, fairness and the random nature of the products offered are inspected and updated with the latest methods and sophisticated technology. Not only is it our mission to provide operators with the most entertaining gaming system, but it is also our duty to prevent compulsive usage and underage access of our gaming products.'),
                            ]),
                            SizedBox(height: height * 0.01),
                            BottomBar()
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
    );
  }
}
