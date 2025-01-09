import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/top_bar.dart';

import '../bottom_bar.dart';
import '../drawer.dart';

class Company extends StatelessWidget {
  final double offset;
  const Company({super.key, required this.offset});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> key = GlobalKey();
    final controller = ScrollController();
    Future.delayed(Duration(milliseconds: 1500), () {
      if (controller.hasClients) {
        controller.animateTo(offset,
            duration: Duration(milliseconds: 500), curve: Curves.linear);
      }
    });
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
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
                          height: height * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.orange)),
                          child: Padding(
                              padding: EdgeInsets.all(32),
                              child: Row(
                                children: [
                                  Icon(Icons.lightbulb,
                                      color: Colors.orange, size: 100),
                                  SizedBox(width: width * 0.05),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('OUR VISION',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'pop2',
                                              fontSize: 35)),
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
                          height: height * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.orange)),
                          child: Padding(
                              padding: EdgeInsets.all(32),
                              child: Row(
                                children: [
                                  Icon(Icons.check_circle,
                                      color: Colors.orange, size: 100),
                                  SizedBox(width: width * 0.05),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('OUR MISSION',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'pop2',
                                              fontSize: 35)),
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
                        Text('Core',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('VALUES',
                            style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
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
                            Icon(Icons.settings, color: Colors.green, size: 50),
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
                            Icon(Icons.group, color: Colors.orange, size: 50),
                            SizedBox(height: 15),
                            SizedBox(
                              width: width * 0.15,
                              child: Text('PROFESSIONALISM',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.orange,
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
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Container(
                      width: width * 0.6,
                      height: height * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.orange, width: 5)),
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
                                        color: Colors.orange,
                                        fontSize: 35,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: height * 0.025),
                                Row(
                                  children: [
                                    Icon(Icons.check_box_outlined,
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                              color: Colors.orange,
                            ),
                            Column(
                              children: [
                                Text('FOR PLAYERS',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 35,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: height * 0.025),
                                Row(
                                  children: [
                                    Icon(Icons.check_box_outlined,
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Our',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('STUDIOS',
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
                              'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fcasino2.jpg?alt=media&token=afe176aa-e504-4b66-a929-c70c4b08742e',
                            ),
                            width: width,
                            height: height * 0.7,
                            fit: BoxFit.cover),
                        Padding(
                            padding: EdgeInsets.only(top: 250, left: 400),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('EUROPEAN.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 70)),
                                Text('SOPHISTICATED.',
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
                    Container(
                      width: width * 0.6,
                      height: height * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 5, color: Colors.orange),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: EdgeInsets.all(32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: height * 0.02),
                                  Text('LIVE STUDIOS',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 35,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  SizedBox(
                                      width: width * 0.2,
                                      child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                              'Broadcasting from state-of-the-art studios, XPG offers a chance for your players to see interactive and experienced croupiers dealing cards and spinning the roulette wheel in real time. Being in the heart of Europe - in Bulgaria and Moldova, our studious are fit out with cutting-edge casino equipment, including the most advanced audio & video recording equipment from the industry-leading company Cammegh. It allows us to acquire the highest level of game immersion and helps to create a pure Live casino experience that XPG is known for.',
                                              style: TextStyle(
                                                  fontFamily: 'pop2',
                                                  color: Colors.grey,
                                                  fontSize: 15)))),
                                ],
                              ),
                              Container(
                                height: height * 0.5,
                                width: 5,
                                color: Colors.orange,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('STUDIO FACILITY',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 35,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Cutting-edge equipment from the industry leader Cammegh',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Classic real casino design that is appealing and familiar',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Advanced audio & video recording technology',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Professional, experienced and pleasant dealers',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text(
                                            'Relaxed and friendly atmosphere',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.2,
                                        child: Text('24/7 HD streaming',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: height * 0.05),
                    SizedBox(
                      width: width * 0.5,
                      child: QuoteWidget(
                        quote:
                            "Our studios are managed and operated by professional pit bosses, competent casino managers, and experienced dealers whose combined knowledge and skills all add to our players' security and overall experience. We must be confident that the quality of gaming experience is kept 24/7 and everyday challenges are met with consistency. To provide the best Live experience possible, the studios should be comfortable for everyone: players, dealers, managers, and all the members of the studio team, therefore, there is a concept by which we manage our studios - universality.",
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.orange, width: 3),
                              color: Colors.white),
                          child: Padding(
                              padding: EdgeInsets.all(32),
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.nest_cam_wired_stand,
                                        color: Colors.green, size: 35),
                                    SizedBox(width: width * 0.01),
                                    Text('Newly renovated studios',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'pop2',
                                            fontSize: 17.5))
                                  ],
                                ),
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.orange, width: 3),
                              color: Colors.white),
                          child: Padding(
                              padding: EdgeInsets.all(32),
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.code,
                                        color: Colors.blue, size: 35),
                                    SizedBox(width: width * 0.01),
                                    Text('Cutting-edge technologies',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'pop2',
                                            fontSize: 17.5))
                                  ],
                                ),
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.orange, width: 3),
                              color: Colors.white),
                          child: Padding(
                              padding: EdgeInsets.all(32),
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.event_available,
                                        color: Colors.orange, size: 35),
                                    SizedBox(width: width * 0.01),
                                    Text('Round-the-clock HD streaming',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'pop2',
                                            fontSize: 17.5))
                                  ],
                                ),
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.orange, width: 3),
                              color: Colors.white),
                          child: Padding(
                              padding: EdgeInsets.all(32),
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.woman,
                                        color: Colors.indigo, size: 35),
                                    SizedBox(width: width * 0.01),
                                    Text('Professional female dealers',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'pop2',
                                            fontSize: 17.5))
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Fair',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('GAMING',
                            style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Container(
                      height: height * 0.4,
                      width: width * 0.775,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.orange, width: 5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.25,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('ABOUT',
                                      style: TextStyle(
                                          color: Colors.orange,
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
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: width * 0.25,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('CERTIFICATION AND REGULATION',
                                      style: TextStyle(
                                          color: Colors.orange,
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
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: width * 0.25,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('RESPONSIBLE GAMING TOOLS',
                                      style: TextStyle(
                                          color: Colors.orange,
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
                        Text('Our',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('RESPONSIBILITY',
                            style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
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
                                        color: Colors.orange,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                SizedBox(width: width * 0.05),
                                Text(
                                    'Anti-Fraud and Anti-Money Laundering Policy ',
                                    style: TextStyle(
                                        color:
                                            CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              SizedBox(width: width * 0.05),
                              Text('Compulsive Gambling Prevention',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              SizedBox(width: width * 0.05),
                              Text('Underage play',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              SizedBox(width: width * 0.05),
                              Text('Limits',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              SizedBox(width: width * 0.05),
                              Text('Self-exclusion tools',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                    SizedBox(height: height * 0.05),
                    BottomBar()
                  ],
                ),
              )
            : SingleChildScrollView(
                controller: controller,
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
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.orange)),
                            child: Row(
                              children: [
                                Icon(Icons.lightbulb,
                                    color: Colors.orange, size: 50),
                                SizedBox(width: width * 0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('OUR VISION',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'pop2',
                                            fontSize: 22.5)),
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
                          SizedBox(height: height * 0.05),
                          Container(
                            height: height * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.orange)),
                            child: Row(
                              children: [
                                Icon(Icons.check_circle,
                                    color: Colors.orange, size: 50),
                                SizedBox(width: width * 0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('OUR MISSION',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'pop2',
                                            fontSize: 22.5)),
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
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Core',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('VALUES',
                            style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
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
                            Icon(Icons.settings, color: Colors.green, size: 50),
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
                            Icon(Icons.group, color: Colors.orange, size: 50),
                            SizedBox(height: 15),
                            SizedBox(
                              width: width * 0.5,
                              child: Text('PROFESSIONALISM',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.orange,
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
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Container(
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.orange, width: 5)),
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
                                        color: Colors.orange,
                                        fontSize: 25,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: height * 0.025),
                                Row(
                                  children: [
                                    Icon(Icons.check_box_outlined,
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                              color: Colors.orange,
                            ),
                            SizedBox(height: 25),
                            Column(
                              children: [
                                Text('FOR PLAYERS',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 25,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: height * 0.025),
                                Row(
                                  children: [
                                    Icon(Icons.check_box_outlined,
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                                        color: Colors.orange),
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
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Our',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('STUDIOS',
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
                              'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fcasino2.jpg?alt=media&token=afe176aa-e504-4b66-a929-c70c4b08742e',
                            ),
                            width: width,
                            height: height * 0.7,
                            fit: BoxFit.cover),
                        Padding(
                            padding: EdgeInsets.only(top: 150, left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('EUROPEAN.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                                Text('SOPHISTICATED.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Container(
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 5, color: Colors.orange),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: EdgeInsets.all(32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: height * 0.02),
                                  Text('LIVE STUDIOS',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 25,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  SizedBox(
                                      width: width * 0.6,
                                      child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                              'Broadcasting from state-of-the-art studios, XPG offers a chance for your players to see interactive and experienced croupiers dealing cards and spinning the roulette wheel in real time. Being in the heart of Europe - in Bulgaria and Moldova, our studious are fit out with cutting-edge casino equipment, including the most advanced audio & video recording equipment from the industry-leading company Cammegh. It allows us to acquire the highest level of game immersion and helps to create a pure Live casino experience that XPG is known for.',
                                              style: TextStyle(
                                                  fontFamily: 'pop2',
                                                  color: Colors.grey,
                                                  fontSize: 15)))),
                                ],
                              ),
                              Container(
                                width: width * 0.5,
                                height: 5,
                                color: Colors.orange,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('STUDIO FACILITY',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 25,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    children: [
                                      Icon(Icons.check_box_outlined,
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Cutting-edge equipment from the industry leader Cammegh',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Classic real casino design that is appealing and familiar',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Advanced audio & video recording technology',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Professional, experienced and pleasant dealers',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                            'Relaxed and friendly atmosphere',
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
                                          color: Colors.orange),
                                      SizedBox(width: 15),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text('24/7 HD streaming',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'pop2')),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: height * 0.05),
                    SizedBox(
                      width: width * 0.9,
                      child: QuoteWidget(
                        quote:
                            "Our studios are managed and operated by professional pit bosses, competent casino managers, and experienced dealers whose combined knowledge and skills all add to our players' security and overall experience. We must be confident that the quality of gaming experience is kept 24/7 and everyday challenges are met with consistency. To provide the best Live experience possible, the studios should be comfortable for everyone: players, dealers, managers, and all the members of the studio team, therefore, there is a concept by which we manage our studios - universality.",
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.orange, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.nest_cam_wired_stand,
                                          color: Colors.green, size: 35),
                                      SizedBox(width: width * 0.01),
                                      Text('Newly renovated studios',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'pop2',
                                              fontSize: 15))
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(height: 25),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.orange, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.code,
                                          color: Colors.blue, size: 35),
                                      SizedBox(width: width * 0.01),
                                      Text('Cutting-edge technologies',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'pop2',
                                              fontSize: 15))
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(height: 25),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.orange, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.event_available,
                                          color: Colors.orange, size: 35),
                                      SizedBox(width: width * 0.01),
                                      Text('Round-the-clock HD streaming',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'pop2',
                                              fontSize: 15))
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(height: 25),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.orange, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.woman,
                                          color: Colors.indigo, size: 35),
                                      SizedBox(width: width * 0.01),
                                      Text('Professional female dealers',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'pop2',
                                              fontSize: 15))
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Fair',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('GAMING',
                            style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Container(
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.orange, width: 5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('ABOUT',
                                      style: TextStyle(
                                          color: Colors.orange,
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
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('CERTIFICATION AND REGULATION',
                                      style: TextStyle(
                                          color: Colors.orange,
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
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('RESPONSIBLE GAMING TOOLS',
                                      style: TextStyle(
                                          color: Colors.orange,
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
                        Text('Our',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 35)),
                        SizedBox(width: width * 0.0025),
                        Text('RESPONSIBILITY',
                            style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 35,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ],
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
                                        color: Colors.orange,
                                        fontFamily: 'pop2',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10)),
                                SizedBox(width: width * 0.05),
                                Text(
                                    'Anti-Fraud and Anti-Money Laundering Policy ',
                                    style: TextStyle(
                                        color:
                                            CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.5)),
                              SizedBox(width: width * 0.05),
                              Text('Compulsive Gambling Prevention',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              SizedBox(width: width * 0.05),
                              Text('Underage play',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              SizedBox(width: width * 0.05),
                              Text('Limits',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                                      color: Colors.orange,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              SizedBox(width: width * 0.05),
                              Text('Self-exclusion tools',
                                  style: TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
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
                    SizedBox(height: height * 0.05),
                    BottomBar()
                  ],
                ),
              ),
      ),
    );
  }
}

class QuoteWidget extends StatelessWidget {
  final String quote;

  const QuoteWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '“',
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.grey.withOpacity(0.3),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40.0, right: 40.0),
                                child: Text(
                                  quote,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey,
                                      fontFamily: 'pop2'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '“',
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.grey.withOpacity(0.3),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  quote,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey,
                                      fontFamily: 'pop2'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ));
  }
}

class QuoteWidget2 extends StatelessWidget {
  final String quote;
  final double width;
  const QuoteWidget2({super.key, required this.quote, required this.width});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? Center(
                child: SizedBox(
                  width: width * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '“',
                                    style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.grey.withOpacity(0.3),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0),
                                  child: Text(
                                    quote,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontFamily: 'pop2'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Center(
                child: SizedBox(
                  width: width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '“',
                                    style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.grey.withOpacity(0.3),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    quote,
                                    style: TextStyle(
                                        fontSize: 12.5,
                                        color: Colors.grey,
                                        fontFamily: 'pop2'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ));
  }
}
