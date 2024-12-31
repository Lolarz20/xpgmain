import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.175,
      width: width,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fxpg.png?alt=media&token=c2c3a5ef-55cc-41d0-9498-fe0a7b22118d'),
                    height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.phone,
                        color: CupertinoColors.darkBackgroundGray, size: 12.5),
                    SizedBox(width: 10),
                    Text('+421 911 628 998',
                        style: TextStyle(
                            color: CupertinoColors.darkBackgroundGray,
                            fontSize: 12.5)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.mail,
                        color: CupertinoColors.darkBackgroundGray, size: 12.5),
                    SizedBox(width: 10),
                    Text('info@xprogaming.com',
                        style: TextStyle(
                            color: CupertinoColors.darkBackgroundGray,
                            fontSize: 12.5)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.place,
                        color: CupertinoColors.darkBackgroundGray, size: 12.5),
                    SizedBox(width: 10),
                    Text('Bratislava, Slovakia',
                        style: TextStyle(
                            color: CupertinoColors.darkBackgroundGray,
                            fontSize: 12.5)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('COMPANY',
                        style: TextStyle(
                            color: CupertinoColors.darkBackgroundGray,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: height * 0.0075),
                    Column(
                      children: [
                        Text('About XPG', style: TextStyle(fontSize: 12.5)),
                        Text('Our Live Studios',
                            style: TextStyle(fontSize: 12.5)),
                        Text('Our Partners', style: TextStyle(fontSize: 12.5)),
                        Text('Fair Gaming', style: TextStyle(fontSize: 12.5)),
                        Text('Contact', style: TextStyle(fontSize: 12.5)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: width * 0.05),
                Column(
                  children: [
                    Text('LIVE GAMES',
                        style: TextStyle(
                            color: CupertinoColors.darkBackgroundGray,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: height * 0.0075),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Wheel Of Fortune',
                                style: TextStyle(fontSize: 12.5)),
                            Text('Andar Bahar',
                                style: TextStyle(fontSize: 12.5)),
                            Text('Roulette', style: TextStyle(fontSize: 12.5)),
                            Text('Blackjack', style: TextStyle(fontSize: 12.5)),
                            Text('Baccarat', style: TextStyle(fontSize: 12.5)),
                          ],
                        ),
                        SizedBox(width: width * 0.025),
                        Column(
                          children: [
                            Text('Dragon Tiger',
                                style: TextStyle(fontSize: 12.5)),
                            Text('Sic Bo', style: TextStyle(fontSize: 12.5)),
                            Text("Texas Hold'em Bonus",
                                style: TextStyle(fontSize: 12.5)),
                            Text('Caribbean Stud Poker',
                                style: TextStyle(fontSize: 12.5)),
                            Text('Multiplayer Poker',
                                style: TextStyle(fontSize: 12.5)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(width: width * 0.05),
                Column(
                  children: [
                    Text('SOLUTIONS',
                        style: TextStyle(
                            color: CupertinoColors.darkBackgroundGray,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: height * 0.0075),
                    Column(
                      children: [
                        Text('API Integration',
                            style: TextStyle(fontSize: 12.5)),
                        Text('White Label', style: TextStyle(fontSize: 12.5)),
                        Text('Mobile', style: TextStyle(fontSize: 12.5)),
                        Text('Private Tables',
                            style: TextStyle(fontSize: 12.5)),
                        Text('Printing Materials',
                            style: TextStyle(fontSize: 12.5)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container()
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(15),
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          //       child: Column(
          //         children: [
          //           Padding(
          //               padding: EdgeInsets.all(8),
          //               child: Text(
          //                 'EMAIL US',
          //                 style: TextStyle(
          //                     color: CupertinoColors.darkBackgroundGray,
          //                     fontFamily: 'pop2'),
          //               )),
          //           SizedBox(
          //             width: width * 0.15,
          //             height: height * 0.04,
          //             child: TextField(
          //               style: TextStyle(fontSize: 12.5),
          //               decoration: InputDecoration(
          //                   border: OutlineInputBorder(
          //                       borderRadius: BorderRadius.circular(5))),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
