import 'package:flutter/material.dart';
import 'package:xpgmain/bottom_bar.dart';
import 'package:xpgmain/drawer.dart';
import 'package:xpgmain/top_bar.dart';

class XpgBaccarat extends StatelessWidget {
  const XpgBaccarat({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> key = GlobalKey();
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        drawer: MainDrawer(),
        key: key,
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopWidget(
                keyMain: key,
              ),
              BottomBar()
            ],
          ),
        ));
  }
}
