import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XPG',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> images = [
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
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopWidget(),
            SizedBox(height: height * 0.05),
            Container(
              width: width * 0.825,
              height: height * 0.8,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Obrazek
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      images[currentIndex],
                      fit: BoxFit.cover,
                      width: width * 0.825,
                      height: height * 0.8,
                    ),
                  ),
                  // Przycisk wstecz
                  Positioned(
                    left: 5,
                    child: TextButton(
                      onPressed: _previousImage,
                      // style: ElevatedButton.styleFrom(
                      //   shape: CircleBorder(),
                      //   padding: EdgeInsets.all(25),
                      //   //backgroundColor: Colors.black.withOpacity(0.5),
                      // ),
                      child: Icon(Icons.arrow_back_ios,
                          size: 40, color: Colors.white),
                    ),
                  ),
                  // Przycisk dalej
                  Positioned(
                    right: 5,
                    child: TextButton(
                      onPressed: _nextImage,
                      // style: ElevatedButton.styleFrom(
                      //   shape: CircleBorder(),
                      //   padding: EdgeInsets.all(25),
                      //   //backgroundColor: Colors.black.withOpacity(0.5),
                      // ),
                      child: Icon(Icons.arrow_forward_ios,
                          size: 40, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                  Image(
                      image: AssetImage('assets/xpg.png'),
                      height: height * 0.075),
                  SizedBox(width: 50),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'LIVE DEMO',
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
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Center(
                              child: Text('Client Area',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'pop2')),
                            )),
                      ),
                    ),
                    SizedBox(width: 25),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color: CupertinoColors.darkBackgroundGray,
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Center(
                              child: Text('Contact Us',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'pop2')),
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
