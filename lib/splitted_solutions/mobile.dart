import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

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
              ? CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                        delegate: CustomHeaderDelegate(keyMain: key)),
                    SliverFillRemaining(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('MOBILE',
                                    style: TextStyle(
                                        fontFamily: 'pop2', fontSize: 30)),
                                SizedBox(width: width * 0.005),
                                Text('SOLUTIONS',
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
                              child: Text(
                                  textAlign: TextAlign.center,
                                  'XPG demonstrates evolutionary approach to mobile development by creating HTML5 Mobile solution. Many of its features have been adapted with the consideration of running on low powered devices, such as Smart Phones and Tablets. Importantly whilst running within a web browser, it is not tied to the underlying operating system. It is already supported in the latest web browsers and provides unparalleled Live gaming experience. For those who still prefer to download the app, XPG has created a user-friendly and reliable Mobile app for Android devices with a clear interface and intuitive navigation.',
                                  style: TextStyle(
                                      fontFamily: 'pop2', color: Colors.grey)),
                            ),
                            SizedBox(height: height * 0.05),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.public,
                                      title: 'PLAY ANYWHERE AT ANY TIME',
                                    ),
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.devices,
                                      title: 'PLAY ON ANY DEVICE',
                                    ),
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.language,
                                      title: 'PLAY IN ANY BROWSER',
                                    ),
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.videogame_asset,
                                      title: 'PLAY ANY GAME OF CHOICE',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.375),
                            BottomBar()
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                        delegate: CustomHeaderDelegate(keyMain: key)),
                    SliverFillRemaining(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('MOBILE',
                                    style: TextStyle(
                                        fontFamily: 'pop2', fontSize: 30)),
                                SizedBox(width: width * 0.005),
                                Text('SOLUTIONS',
                                    style: TextStyle(
                                        fontFamily: 'pop2',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: height * 0.05),
                            SizedBox(
                              width: width * 0.8,
                              child: Text(
                                  textAlign: TextAlign.center,
                                  'XPG demonstrates evolutionary approach to mobile development by creating HTML5 Mobile solution. Many of its features have been adapted with the consideration of running on low powered devices, such as Smart Phones and Tablets. Importantly whilst running within a web browser, it is not tied to the underlying operating system. It is already supported in the latest web browsers and provides unparalleled Live gaming experience. For those who still prefer to download the app, XPG has created a user-friendly and reliable Mobile app for Android devices with a clear interface and intuitive navigation.',
                                  style: TextStyle(
                                      fontFamily: 'pop2', color: Colors.grey)),
                            ),
                            SizedBox(height: height * 0.05),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.public,
                                      title: 'PLAY ANYWHERE AT ANY TIME',
                                    ),
                                    SizedBox(height: height * 0.05),
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.devices,
                                      title: 'PLAY ON ANY DEVICE',
                                    ),
                                    SizedBox(height: height * 0.05),
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.language,
                                      title: 'PLAY IN ANY BROWSER',
                                    ),
                                    SizedBox(height: height * 0.05),
                                    _buildFeatureCard(
                                      width: width,
                                      icon: Icons.videogame_asset,
                                      title: 'PLAY ANY GAME OF CHOICE',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            BottomBar()
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
    );
  }
}

Widget _buildFeatureCard(
    {required IconData icon, required String title, required double width}) {
  return ResponsiveBuilder(
    builder: (context, sizingInformation) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: sizingInformation.isDesktop ? width * 0.2 : width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.blueGrey,
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'pop2'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
