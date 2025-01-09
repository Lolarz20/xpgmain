import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xpgmain/MainScreen/disclaimers.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? Container(
                width: width,
                //color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Text('Follow Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'pop2',
                              fontSize: 35)),
                      SizedBox(height: 25),
                      Container(
                        color: Colors.grey,
                        width: width * 0.15,
                        height: 1,
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => launchUrl(Uri()),
                              icon: Icon(FontAwesomeIcons.linkedin,
                                  color: Colors.grey, size: 50)),
                          SizedBox(width: 50),
                          IconButton(
                              onPressed: () => launchUrl(Uri()),
                              icon: Icon(FontAwesomeIcons.youtube,
                                  color: Colors.grey, size: 50)),
                        ],
                      ),
                      SizedBox(height: 25),
                      Disclaimers(),
                      SizedBox(height: 25),
                      Text('XPG © 2017 - 2025 All Rights Reserved',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.5,
                              fontFamily: 'pop2')),
                      SizedBox(height: 15)
                    ],
                  ),
                  // child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Image(
                  //                   image: NetworkImage(
                  //                       'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fxpg.png?alt=media&token=c2c3a5ef-55cc-41d0-9498-fe0a7b22118d'),
                  //                   height: height * 0.05),
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Icon(Icons.phone,
                  //                       color:
                  //                           CupertinoColors.darkBackgroundGray,
                  //                       size: 12.5),
                  //                   SizedBox(width: 10),
                  //                   Text('+421 911 628 998',
                  //                       style: TextStyle(
                  //                           color: CupertinoColors
                  //                               .darkBackgroundGray,
                  //                           fontSize: 12.5)),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Icon(Icons.mail,
                  //                       color:
                  //                           CupertinoColors.darkBackgroundGray,
                  //                       size: 12.5),
                  //                   SizedBox(width: 10),
                  //                   Text('info@xprogaming.com',
                  //                       style: TextStyle(
                  //                           color: CupertinoColors
                  //                               .darkBackgroundGray,
                  //                           fontSize: 12.5)),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Icon(Icons.place,
                  //                       color:
                  //                           CupertinoColors.darkBackgroundGray,
                  //                       size: 12.5),
                  //                   SizedBox(width: 10),
                  //                   Text('Bratislava, Slovakia',
                  //                       style: TextStyle(
                  //                           color: CupertinoColors
                  //                               .darkBackgroundGray,
                  //                           fontSize: 12.5)),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.only(top: 20),
                  //           child: Row(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Column(
                  //                 children: [
                  //                   // Text('COMPANY',
                  //                   //     style: TextStyle(
                  //                   //         color: CupertinoColors.darkBackgroundGray,
                  //                   //         fontSize: 15,
                  //                   //         fontWeight: FontWeight.bold)),
                  //                   SizedBox(height: height * 0.0075),
                  //                   Column(
                  //                     children: [
                  //                       InkWell(
                  //                         onTap: () => context.go('/company'),
                  //                         child: Text('About XPG',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/company/2100'),
                  //                         child: Text('Our Live Studios',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/1000'),
                  //                         child: Text('Our Partners',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/company/4000'),
                  //                         child: Text('Fair Gaming',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () => context.go('/contacts'),
                  //                         child: Text('Contact',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //               SizedBox(width: width * 0.05),
                  //               Column(
                  //                 children: [
                  //                   // Text('SOLUTIONS',
                  //                   //     style: TextStyle(
                  //                   //         color: CupertinoColors.darkBackgroundGray,
                  //                   //         fontSize: 15,
                  //                   //         fontWeight: FontWeight.bold)),
                  //                   SizedBox(height: height * 0.0075),
                  //                   Column(
                  //                     children: [
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/700'),
                  //                         child: Text('API Integration',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/1900'),
                  //                         child: Text('White Label',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/3200'),
                  //                         child: Text('Mobile',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/4600'),
                  //                         child: Text('Private Tables',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () => launchUrl(Uri.parse(
                  //                             'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/brochure_a5_2024.pdf?alt=media&token=b1454896-f204-4751-91ef-851e766b3f32')),
                  //                         child: Text('Printing Materials',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Row(
                  //           children: [
                  //             IconButton(
                  //                 onPressed: () => launchUrl(Uri()),
                  //                 icon: Icon(FontAwesomeIcons.linkedin,
                  //                     color: Colors.grey)),
                  //             IconButton(
                  //                 onPressed: () => launchUrl(Uri()),
                  //                 icon: Icon(FontAwesomeIcons.youtube,
                  //                     color: Colors.grey)),
                  //           ],
                  //         )
                  //         // Padding(
                  //         //   padding: const EdgeInsets.all(16),
                  //         //   child: Container(
                  //         //     decoration: BoxDecoration(
                  //         //       color: Colors.white,
                  //         //       borderRadius: BorderRadius.circular(15),
                  //         //     ),
                  //         //     child: Padding(
                  //         //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  //         //       child: Column(
                  //         //         children: [
                  //         //           Padding(
                  //         //               padding: EdgeInsets.all(8),
                  //         //               child: Text(
                  //         //                 'EMAIL US',
                  //         //                 style: TextStyle(
                  //         //                     color: CupertinoColors.darkBackgroundGray,
                  //         //                     fontFamily: 'pop2'),
                  //         //               )),
                  //         //           SizedBox(
                  //         //             width: width * 0.15,
                  //         //             height: height * 0.04,
                  //         //             child: TextField(
                  //         //               style: TextStyle(fontSize: 12.5),
                  //         //               decoration: InputDecoration(
                  //         //                   border: OutlineInputBorder(
                  //         //                       borderRadius: BorderRadius.circular(5))),
                  //         //             ),
                  //         //           ),
                  //         //         ],
                  //         //       ),
                  //         //     ),
                  //         //   ),
                  //         // )
                  //       ],
                  //     ),
                  //     Text('XPG © 2017 - 2025 All Rights Reserved',
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 12.5,
                  //             fontFamily: 'pop2'))
                  //   ],
                  // ),
                ),
              )
            : Container(
                width: width,
                //color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Text('Follow Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'pop2',
                              fontSize: 35)),
                      SizedBox(height: 25),
                      Container(
                        color: Colors.grey,
                        width: width * 0.15,
                        height: 1,
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => launchUrl(Uri()),
                              icon: Icon(FontAwesomeIcons.linkedin,
                                  color: Colors.grey, size: 50)),
                          SizedBox(width: 50),
                          IconButton(
                              onPressed: () => launchUrl(Uri()),
                              icon: Icon(FontAwesomeIcons.youtube,
                                  color: Colors.grey, size: 50)),
                        ],
                      ),
                      Text('XPG © 2017 - 2025 All Rights Reserved',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.5,
                              fontFamily: 'pop2')),
                      SizedBox(height: 15)
                    ],
                  ),
                  // child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Image(
                  //                   image: NetworkImage(
                  //                       'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fxpg.png?alt=media&token=c2c3a5ef-55cc-41d0-9498-fe0a7b22118d'),
                  //                   height: height * 0.05),
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Icon(Icons.phone,
                  //                       color:
                  //                           CupertinoColors.darkBackgroundGray,
                  //                       size: 12.5),
                  //                   SizedBox(width: 10),
                  //                   Text('+421 911 628 998',
                  //                       style: TextStyle(
                  //                           color: CupertinoColors
                  //                               .darkBackgroundGray,
                  //                           fontSize: 12.5)),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Icon(Icons.mail,
                  //                       color:
                  //                           CupertinoColors.darkBackgroundGray,
                  //                       size: 12.5),
                  //                   SizedBox(width: 10),
                  //                   Text('info@xprogaming.com',
                  //                       style: TextStyle(
                  //                           color: CupertinoColors
                  //                               .darkBackgroundGray,
                  //                           fontSize: 12.5)),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Icon(Icons.place,
                  //                       color:
                  //                           CupertinoColors.darkBackgroundGray,
                  //                       size: 12.5),
                  //                   SizedBox(width: 10),
                  //                   Text('Bratislava, Slovakia',
                  //                       style: TextStyle(
                  //                           color: CupertinoColors
                  //                               .darkBackgroundGray,
                  //                           fontSize: 12.5)),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.only(top: 20),
                  //           child: Row(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Column(
                  //                 children: [
                  //                   // Text('COMPANY',
                  //                   //     style: TextStyle(
                  //                   //         color: CupertinoColors.darkBackgroundGray,
                  //                   //         fontSize: 15,
                  //                   //         fontWeight: FontWeight.bold)),
                  //                   SizedBox(height: height * 0.0075),
                  //                   Column(
                  //                     children: [
                  //                       InkWell(
                  //                         onTap: () => context.go('/company'),
                  //                         child: Text('About XPG',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/company/2100'),
                  //                         child: Text('Our Live Studios',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/1000'),
                  //                         child: Text('Our Partners',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/company/4000'),
                  //                         child: Text('Fair Gaming',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () => context.go('/contacts'),
                  //                         child: Text('Contact',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //               SizedBox(width: width * 0.05),
                  //               Column(
                  //                 children: [
                  //                   // Text('SOLUTIONS',
                  //                   //     style: TextStyle(
                  //                   //         color: CupertinoColors.darkBackgroundGray,
                  //                   //         fontSize: 15,
                  //                   //         fontWeight: FontWeight.bold)),
                  //                   SizedBox(height: height * 0.0075),
                  //                   Column(
                  //                     children: [
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/700'),
                  //                         child: Text('API Integration',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/1900'),
                  //                         child: Text('White Label',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/3200'),
                  //                         child: Text('Mobile',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () =>
                  //                             context.go('/solutions/4600'),
                  //                         child: Text('Private Tables',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                       InkWell(
                  //                         onTap: () => launchUrl(Uri.parse(
                  //                             'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/brochure_a5_2024.pdf?alt=media&token=b1454896-f204-4751-91ef-851e766b3f32')),
                  //                         child: Text('Printing Materials',
                  //                             style: TextStyle(
                  //                                 fontSize: 12.5,
                  //                                 fontFamily: 'pop2')),
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Row(
                  //           children: [
                  //             IconButton(
                  //                 onPressed: () => launchUrl(Uri()),
                  //                 icon: Icon(FontAwesomeIcons.linkedin,
                  //                     color: Colors.grey)),
                  //             IconButton(
                  //                 onPressed: () => launchUrl(Uri()),
                  //                 icon: Icon(FontAwesomeIcons.youtube,
                  //                     color: Colors.grey)),
                  //           ],
                  //         )
                  //         // Padding(
                  //         //   padding: const EdgeInsets.all(16),
                  //         //   child: Container(
                  //         //     decoration: BoxDecoration(
                  //         //       color: Colors.white,
                  //         //       borderRadius: BorderRadius.circular(15),
                  //         //     ),
                  //         //     child: Padding(
                  //         //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  //         //       child: Column(
                  //         //         children: [
                  //         //           Padding(
                  //         //               padding: EdgeInsets.all(8),
                  //         //               child: Text(
                  //         //                 'EMAIL US',
                  //         //                 style: TextStyle(
                  //         //                     color: CupertinoColors.darkBackgroundGray,
                  //         //                     fontFamily: 'pop2'),
                  //         //               )),
                  //         //           SizedBox(
                  //         //             width: width * 0.15,
                  //         //             height: height * 0.04,
                  //         //             child: TextField(
                  //         //               style: TextStyle(fontSize: 12.5),
                  //         //               decoration: InputDecoration(
                  //         //                   border: OutlineInputBorder(
                  //         //                       borderRadius: BorderRadius.circular(5))),
                  //         //             ),
                  //         //           ),
                  //         //         ],
                  //         //       ),
                  //         //     ),
                  //         //   ),
                  //         // )
                  //       ],
                  //     ),
                  //     Text('XPG © 2017 - 2025 All Rights Reserved',
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 12.5,
                  //             fontFamily: 'pop2'))
                  //   ],
                  // ),
                ),
              ));
  }
}
