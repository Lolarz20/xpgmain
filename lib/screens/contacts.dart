import 'package:flutter/material.dart';
import 'package:xpgmain/MainScreen/top_bar.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TopWidget(),
          //BottomBar()
        ],
      ),
    ));
  }
}
