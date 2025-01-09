import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

import '../screens/company.dart';

class LiveStudios extends StatelessWidget {
  const LiveStudios({super.key});

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('OUR',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.0025),
                          Text('STUDIOS',
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
                        ),
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
                                            color: Colors.blueGrey,
                                            fontSize: 30,
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
                                  color: Colors.blueGrey,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('STUDIO FACILITY',
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                border: Border.all(
                                    color: Colors.blueGrey, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.nest_cam_wired_stand,
                                          color: Colors.green, size: 30),
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
                                border: Border.all(
                                    color: Colors.blueGrey, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.code,
                                          color: Colors.blue, size: 30),
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
                                border: Border.all(
                                    color: Colors.blueGrey, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.event_available,
                                          color: Colors.blueGrey, size: 30),
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
                                border: Border.all(
                                    color: Colors.blueGrey, width: 3),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.woman,
                                          color: Colors.indigo, size: 30),
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
                      SizedBox(height: height * 0.1),
                      BottomBar()
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      TopWidget(keyMain: key),
                      SizedBox(height: height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('OUR',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('STUDIOS',
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
                              padding: EdgeInsets.only(top: 250, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('EUROPEAN.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40)),
                                  Text('SOPHISTICATED.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Container(
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
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
                                            color: Colors.blueGrey,
                                            fontSize: 25,
                                            fontFamily: 'pop2',
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: height * 0.025),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Text(
                                                'Broadcasting from state-of-the-art studios, XPG offers a chance for your players to see interactive and experienced croupiers dealing cards and spinning the roulette wheel in real time. Being in the heart of Europe - in Bulgaria and Moldova, our studious are fit out with cutting-edge casino equipment, including the most advanced audio & video recording equipment from the industry-leading company Cammegh. It allows us to acquire the highest level of game immersion and helps to create a pure Live casino experience that XPG is known for.',
                                                style: TextStyle(
                                                    fontFamily: 'pop2',
                                                    color: Colors.grey,
                                                    fontSize: 12.5)))),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Container(
                                  width: width * 0.5,
                                  height: 5,
                                  color: Colors.blueGrey,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('STUDIO FACILITY',
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                            color: Colors.blueGrey),
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
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 3),
                                  color: Colors.white),
                              child: Padding(
                                  padding: EdgeInsets.all(32),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.nest_cam_wired_stand,
                                            color: Colors.green, size: 30),
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
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 3),
                                  color: Colors.white),
                              child: Padding(
                                  padding: EdgeInsets.all(32),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.code,
                                            color: Colors.blue, size: 30),
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
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 3),
                                  color: Colors.white),
                              child: Padding(
                                  padding: EdgeInsets.all(32),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.event_available,
                                            color: Colors.blueGrey, size: 30),
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
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 3),
                                  color: Colors.white),
                              child: Padding(
                                  padding: EdgeInsets.all(32),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.woman,
                                            color: Colors.indigo, size: 30),
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
                      SizedBox(height: height * 0.01),
                      BottomBar()
                    ],
                  ),
                )),
    );
  }
}
