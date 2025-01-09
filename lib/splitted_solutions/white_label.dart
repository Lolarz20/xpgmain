import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

class WhiteLabel extends StatelessWidget {
  const WhiteLabel({super.key});

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
                          Text('WHITE',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('LABEL',
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
                          Text('WHITE LABEL',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('SOLUTION',
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
                                        color:
                                            Colors.blueGrey, // Light blueGrey
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
                                        color:
                                            Colors.blueGrey, // Light blueGrey
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
                          Text('WHITE',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 30)),
                          SizedBox(width: width * 0.005),
                          Text('LABEL',
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
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsolution2.jpg?alt=media&token=7e81877f-7426-4cfe-9d2b-2f662e28b321',
                              ),
                              width: width,
                              height: height * 0.7,
                              fit: BoxFit.cover),
                          Padding(
                              padding: EdgeInsets.only(top: 300, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('FUNCTIONAL.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40)),
                                  Text('TRANSPARENT.',
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
                          Text('WHITE LABEL',
                              style:
                                  TextStyle(fontFamily: 'pop2', fontSize: 20)),
                          SizedBox(width: width * 0.005),
                          Text('SOLUTION',
                              style: TextStyle(
                                  fontFamily: 'pop2',
                                  fontSize: 20,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      SizedBox(
                        width: width * 0.8,
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
                                        color:
                                            Colors.blueGrey, // Light blueGrey
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
                                                fontSize: 12.5,
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
                                        color:
                                            Colors.blueGrey, // Light blueGrey
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
                                                fontSize: 12.5,
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
                      SizedBox(height: height * 0.01),
                      BottomBar()
                    ],
                  ),
                )),
    );
  }
}
