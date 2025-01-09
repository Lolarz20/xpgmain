import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class TopWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> keyMain;
  const TopWidget({super.key, required this.keyMain});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? SizedBox(
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
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                        child: Icon(Icons.image_not_supported));
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
                            // TextButton(
                            //     onPressed: () {
                            //       context.go('/company/0');
                            //     },
                            //     child: Text(
                            //       'COMPANY',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.bold,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 15),
                            //     )),
                            HoverMenu(
                              title: Text('COMPANY',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5)),
                              items: [
                                ListTile(
                                    onTap: () => context.go('/about-xpg'),
                                    tileColor: Colors.cyan,
                                    title: Text(
                                      'About XPG',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontSize: 15),
                                    )),
                                ListTile(
                                    onTap: () => context.go('/fair-gaming'),
                                    tileColor: Colors.cyan,
                                    title: Text(
                                      'Fair Gaming',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontSize: 15),
                                    )),
                                ListTile(
                                    onTap: () => context.go('/live-studios'),
                                    tileColor: Colors.cyan,
                                    title: Text(
                                      'Live Studios',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontSize: 15),
                                    )),
                              ],
                            ),
                            Container(width: 1, color: Colors.grey, height: 20),
                            HoverMenu(
                              title: Text('SOLUTIONS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5)),
                              items: [
                                ListTile(
                                    onTap: () => context.go('/api-integration'),
                                    tileColor: Colors.cyan,
                                    title: Text(
                                      'API Integrations',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontSize: 15),
                                    )),
                                ListTile(
                                    onTap: () => context.go('/mobile'),
                                    tileColor: Colors.cyan,
                                    title: Text(
                                      'Mobile Solutions',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontSize: 15),
                                    )),
                                ListTile(
                                    onTap: () => context.go('/private-tables'),
                                    tileColor: Colors.cyan,
                                    title: Text(
                                      'Private Tables',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontSize: 15),
                                    )),
                                ListTile(
                                    onTap: () => context.go('/white-labels'),
                                    tileColor: Colors.cyan,
                                    title: Text(
                                      'White Labels',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'pop2',
                                          fontSize: 15),
                                    )),
                              ],
                            ),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/games');
                                },
                                child: Text(
                                  'LIVE GAMES',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/articles');
                                },
                                child: Text(
                                  'NEWS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/contacts');
                                },
                                child: Text(
                                  'CONTACTS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  launchUrl(
                                      Uri.parse('https://www.xpgdemo.com/'));
                                },
                                child: Text(
                                  'LIVE DEMO',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/xpgbaccarat');
                                },
                                child: Text(
                                  'XPG BACCARAT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () => context.go('/contacts'),
                                          child: Text('Contact Us',
                                              style: TextStyle(
                                                  fontSize: 12.5,
                                                  fontWeight: FontWeight.w100,
                                                  color: Colors.white,
                                                  fontFamily: 'pop2')),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              )
            : SizedBox(
                height: height * 0.075,
                width: width,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              context.go('/');
                            },
                            child: Image(
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                      child: Icon(Icons.image_not_supported));
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
                          IconButton(
                              onPressed: () =>
                                  keyMain.currentState?.openDrawer(),
                              icon: Icon(Icons.menu))
                        ])),
              ));
  }
}
