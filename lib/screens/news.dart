import 'package:flutter/material.dart';
import 'package:xpgmain/MainScreen/top_bar.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TopWidget(),
          //BottomBar(),
        ],
      ),
    ));
  }
}
