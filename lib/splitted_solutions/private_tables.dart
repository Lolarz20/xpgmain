import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

class PrivateTables extends StatelessWidget {
  const PrivateTables({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final key = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MainDrawer(),
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
                          Text('ABOUT',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('PRIVATE TABLES',
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 200, vertical: 25),
                          child: Card(
                            elevation: 10,
                            color: Colors.white,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Colors.blueGrey, width: 3)),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                  'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/%D7%A2%D7%95%D7%AA%D7%A7%20%D7%A9%D7%9C%2032%20cards%20(1).jpg?alt=media&token=e2c101b5-2e66-4b99-a44f-93cbb0a2236a')),
                                        )
                                        //child: playerWidget),
                                        ),
                                  ],
                                )),
                          )),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Private',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('TABLES',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 30,
                                  color: Colors.blueGrey,
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
                              padding: EdgeInsets.only(top: 250, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('EFFICIENT.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40)),
                                  Text('CUSTOMIZED.',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('ABOUT',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 20)),
                          SizedBox(width: width * 0.005),
                          Text('PRIVATE TABLES',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: width * 0.15,
                        height: 0.5,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(height: height * 0.025),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 25),
                          child: Card(
                            elevation: 10,
                            color: Colors.white,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Colors.blueGrey, width: 3)),
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
                                          width: width * 0.8,
                                          child: Text(
                                            textAlign: TextAlign.left,
                                            'If you want an ultimate private table solution, we offer a winning option. Our Live casino system has the widest selection of Live games on the market, and all of them can be available for your players on private tables. We also offer a line of table customization options of different scale to raise you brand awareness fundamentally. With XPG, everything is negotiable and ready to be tailored to your needs, including creating a new game from scratch for your private table exclusively. No matter what games and customization options you choose, it will be a winning combination that lands higher retention rates and more profit to your casino system.',
                                            style: TextStyle(
                                                fontFamily: 'pop2',
                                                fontSize: 12.5,
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                      color: Colors.blueGrey),
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
                                                  'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/%D7%A2%D7%95%D7%AA%D7%A7%20%D7%A9%D7%9C%2032%20cards%20(1).jpg?alt=media&token=e2c101b5-2e66-4b99-a44f-93cbb0a2236a')),
                                        )
                                        //child: playerWidget),
                                        ),
                                  ],
                                )),
                          )),
                      SizedBox(height: height * 0.01),
                      BottomBar()
                    ],
                  ),
                )),
    );
  }
}
