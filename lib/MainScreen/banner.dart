import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final List<String> images = [
    'assets/slide_3.jpg',
    'assets/slide_1.jpg',
    'assets/slide_2.jpg',
  ];

  int currentIndex = 0;

  void _nextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  void _previousImage() {
    setState(() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width * 0.825,
      height: height * 0.8,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              images[currentIndex],
              fit: BoxFit.cover,
              width: width * 0.825,
              height: height * 0.8,
            ),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Game Name/Title',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontFamily: 'marc',
                          fontSize: 45)),
                  SizedBox(height: height * 0.05),
                  Container(
                    width: width * 0.4,
                    color: Colors.white,
                    height: height * 0.001,
                  ),
                  SizedBox(height: height * 0.05),
                  SizedBox(
                    width: width * 0.5,
                    child: Text(
                        textAlign: TextAlign.center,
                        'Description of the game, some texts and others things that we can write about it',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'marc',
                            fontSize: 25)),
                  ),
                  SizedBox(height: height * 0.075),
                  Container(
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.grey[200]?.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: Text(
                            'Button Text',
                            style: TextStyle(
                                fontSize: 22.5,
                                color: Colors.grey,
                                fontFamily: 'pop2'),
                          ),
                        )),
                  )
                ],
              ),
            ),
          )),
          Positioned(
            left: 5,
            child: TextButton(
              onPressed: _previousImage,
              child: Icon(Icons.arrow_back_ios, size: 40, color: Colors.white),
            ),
          ),
          // Przycisk dalej
          Positioned(
            right: 5,
            child: TextButton(
              onPressed: _nextImage,
              child:
                  Icon(Icons.arrow_forward_ios, size: 40, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
