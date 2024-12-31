import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final List<String> images = [
    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fslide_1.jpg?alt=media&token=598973e4-31f2-4a3c-9029-860a27cd622c',
    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fslide_2.jpg?alt=media&token=81721428-f943-45cb-a7c1-f1d1d3f01076',
    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fslide_3.jpg?alt=media&token=25cebf91-2275-4ff0-a6f8-62f1713c491d',
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
              image: NetworkImage(images[currentIndex]),
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
