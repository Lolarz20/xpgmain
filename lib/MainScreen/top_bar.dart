import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height * 0.075,
      width: width,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                      image: AssetImage('assets/xpg.png'),
                      height: height * 0.075),
                  SizedBox(width: 50),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'COMPANY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'pop2',
                            fontSize: 15),
                      )),
                  Container(width: 1, color: Colors.grey, height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'SOLUTIONS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'pop2',
                            fontSize: 15),
                      )),
                  Container(width: 1, color: Colors.grey, height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'LIVE GAMES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'pop2',
                            fontSize: 15),
                      )),
                  Container(width: 1, color: Colors.grey, height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'NEWS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'pop2',
                            fontSize: 15),
                      )),
                  Container(width: 1, color: Colors.grey, height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'CONTACTS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'pop2',
                            fontSize: 15),
                      )),
                  Container(width: 1, color: Colors.grey, height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'LIVE DEMO',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'pop2',
                            fontSize: 15),
                      )),
                  Container(width: 1, color: Colors.grey, height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'XPG BACCARAT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'pop2',
                            fontSize: 15),
                      )),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color: CupertinoColors.darkBackgroundGray,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Center(
                              child: Text('Client Area',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white,
                                      fontSize: 12.5,
                                      fontFamily: 'pop2')),
                            )),
                      ),
                    ),
                    SizedBox(width: 25),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color: CupertinoColors.darkBackgroundGray,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Center(
                              child: Text('Contact Us',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white,
                                      fontFamily: 'pop2')),
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
