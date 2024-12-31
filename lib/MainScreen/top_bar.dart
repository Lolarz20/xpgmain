import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  TextButton(
                    onPressed: () {
                      context.go('/');
                    },
                    child: Image(
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                              child: LoadingIndicator(
                                  indicatorType: Indicator.squareSpin,
                                  colors: const [Colors.grey],
                                  strokeWidth: 2,
                                  backgroundColor: Colors.black,
                                  pathBackgroundColor: Colors.black));
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Icon(
                              Icons.broken_image,
                              size: 48,
                              color: Colors.red,
                            ),
                          );
                        },
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fxpg.png?alt=media&token=c2c3a5ef-55cc-41d0-9498-fe0a7b22118d'),
                        height: height * 0.075),
                  ),
                  SizedBox(width: 50),
                  TextButton(
                      onPressed: () {
                        context.go('/company');
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
                        context.go('/solutions');
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
                        context.go('/games/1');
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
                        context.go('/news');
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
                        context.go('/contacts');
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
                        launchUrl(Uri.parse('https://www.xpgdemo.com/'));
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
                        context.go('/xpgbaccarat');
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
