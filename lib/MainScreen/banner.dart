import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerCarousel extends StatefulWidget {
  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final PageController _pageController = PageController();
  Timer? _timer;
  int _currentIndex = 0;
  List<DocumentSnapshot> _banners = []; // Lista banerów

  @override
  void initState() {
    super.initState();
    _loadBanners(); // Wczytaj banery z Firestore
  }

  // Funkcja do wczytania banerów z Firestore
  void _loadBanners() async {
    final snapshot = await _firestore.collection('banners').get();
    setState(() {
      _banners = snapshot.docs;
    });

    // Uruchom Timer tylko wtedy, gdy załadowano dane
    if (_banners.isNotEmpty) {
      _startAutoScroll();
    }
  }

  // Funkcja do automatycznego przewijania
  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 10), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = (_currentIndex + 1) % _banners.length;
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentIndex = nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Anuluj Timer
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    if (_banners.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Column(
      children: [
        ResponsiveBuilder(
          builder: (context, sizingInformation) => SizedBox(
            width: width,
            height: sizingInformation.isDesktop ? height * 0.775 : height * 0.5,
            child: Stack(
              children: [
                // Karuzela banerów
                PageView.builder(
                  controller: _pageController,
                  itemCount: _banners.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final data = _banners[index].data() as Map<String, dynamic>;

                    return BannerWidget(
                      imageUrl: data['imageUrl'],
                      title: data['title'],
                      subtitle: data['subtitle'],
                      buttonText: data['buttonText'],
                      buttonLink: data['buttonLink'],
                    );
                  },
                ),

                // Strzałka w lewo
                Positioned(
                  left: 20,
                  top: height * 0.35,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      int previousPage = _currentIndex > 0
                          ? _currentIndex - 1
                          : _banners.length - 1;
                      _pageController.animateToPage(
                        previousPage,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        _currentIndex = previousPage;
                      });
                    },
                  ),
                ),

                // Strzałka w prawo
                Positioned(
                  right: 20,
                  top: height * 0.35,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onPressed: () {
                      int nextPage = (_currentIndex + 1) % _banners.length;
                      _pageController.animateToPage(
                        nextPage,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        _currentIndex = nextPage;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _banners.length,
            (index) => AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: _currentIndex == index ? 12 : 8,
              height: _currentIndex == index ? 12 : 8,
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? Colors.orange
                    : Colors.grey.shade400,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BannerWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String buttonText;
  final String buttonLink;

  const BannerWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.buttonLink,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Stack(
        children: [
          // Tło - obrazek banera
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            width: width,
            height: sizingInformation.isDesktop ? height * 0.775 : height * 0.5,
            color: Colors.black.withOpacity(0.1),
          ),
          // Tekst i przyciski
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: FadeInUp(
                delay: Duration(milliseconds: 1000),
                child: ResponsiveBuilder(
                  builder: (context, sizingInformation) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * 0.7,
                        child: Text(
                          textAlign: TextAlign.center,
                          title,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: sizingInformation.isDesktop ? 60 : 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'roman',
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 1,
                        width: width * 0.2,
                        color: Colors.white,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: width * 0.7,
                        child: Text(
                          textAlign: TextAlign.center,
                          subtitle,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: sizingInformation.isDesktop ? 17.5 : 12.5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'pop',
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      (buttonLink == '' || buttonText == '')
                          ? Container()
                          : ResponsiveBuilder(
                              builder: (context, sizingInformation) =>
                                  TextButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(buttonLink));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        sizingInformation.isDesktop ? 20 : 14),
                                    child: Text(
                                      buttonText,
                                      style: TextStyle(
                                        fontFamily: 'pop2',
                                        color: Colors.blueGrey,
                                        fontSize: sizingInformation.isDesktop
                                            ? 15
                                            : 12.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/18-logo.png'),
                    height: 35,
                  ),
                  // SizedBox(width: 5),
                  // Container(
                  //   width: 1,
                  //   height: 25,
                  //   color: Colors.white,
                  // ),
                  // SizedBox(width: 5),
                  // Image(
                  //   image: AssetImage('assets/itech.png'),
                  //   height: 35,
                  // ),
                  // SizedBox(width: 5),
                  // Container(
                  //   width: 1,
                  //   height: 25,
                  //   color: Colors.white,
                  // ),
                  // SizedBox(width: 5),
                  // Image(
                  //   image: AssetImage('assets/MGA-logo-new.png'),
                  //   height: 35,
                  // ),
                  // SizedBox(width: 5),
                  // Container(
                  //   width: 1,
                  //   height: 25,
                  //   color: Colors.white,
                  // ),
                  // SizedBox(width: 5),
                  // Image(
                  //   image: AssetImage('assets/gamstop.png'),
                  //   height: 35,
                  // ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
