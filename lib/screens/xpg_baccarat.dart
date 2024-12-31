import 'package:flutter/material.dart';
import 'package:xpgmain/MainScreen/top_bar.dart';
import 'package:xpgmain/bottom_bar.dart';

class XpgBaccarat extends StatelessWidget {
  const XpgBaccarat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [TopWidget(), BottomBar()],
      ),
    ));
  }
}
