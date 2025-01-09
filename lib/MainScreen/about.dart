import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool seeMore = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Image(
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/%D7%A2%D7%95%D7%AA%D7%A7%20%D7%A9%D7%9C%20XPG%20dealers%20(1).jpg?alt=media&token=d6b0bf4a-cb4d-437e-84ed-4a8367040286'),
            width: width,
            height: height * 0.6,
            fit: BoxFit.cover),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: width,
              height: height * 0.6,
              color: Colors.black.withOpacity(0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text('Our Games',
                              style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 35,
                                color: Colors.white,
                              ))),
                      Container(
                          width: width * 0.2, height: 1, color: Colors.grey),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  ResponsiveBuilder(
                    builder: (context, sizingInformation) => SizedBox(
                      width: sizingInformation.isDesktop
                          ? width * 0.6
                          : width * 0.9,
                      child: Text(
                          textAlign: TextAlign.center,
                          'A unique and flawless gaming experience',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'pop2',
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  sizingInformation.isDesktop ? 22.5 : 12.5)),
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                  ResponsiveBuilder(
                    builder: (context, sizingInformation) => InkWell(
                        onHover: (value) {
                          setState(() {
                            seeMore = value;
                          });
                        },
                        onTap: () => context.go('/games'),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: sizingInformation.isDesktop
                              ? width * 0.075
                              : width * 0.3,
                          decoration: BoxDecoration(
                              color: seeMore
                                  ? CupertinoColors.darkBackgroundGray
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Center(
                                child: Text('SEE MORE',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'pop2',
                                    )),
                              )),
                        )),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
