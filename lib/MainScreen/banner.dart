import 'dart:async';

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
        SizedBox(
          width: width,
          height: height * 0.7,
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
    return Stack(
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
          height: height * 0.7,
          color: Colors.black.withOpacity(0.1),
        ),
        // Tekst i przyciski
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
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
                        fontSize: sizingInformation.isDesktop ? 50 : 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'marc',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 1,
                    width: width * 0.2,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: width * 0.7,
                    child: Text(
                      textAlign: TextAlign.center,
                      subtitle,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: sizingInformation.isDesktop ? 25 : 20,
                        color: Colors.white,
                        fontFamily: 'pop2',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  (buttonLink == '' || buttonText == '')
                      ? Container()
                      : TextButton(
                          onPressed: () {
                            launchUrl(Uri.parse(buttonLink));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                buttonText,
                                style: TextStyle(
                                  fontFamily: 'pop2',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
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
      ],
    );
  }
}
