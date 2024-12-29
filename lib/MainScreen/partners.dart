import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Partners extends StatelessWidget {
  const Partners({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width * 0.75,
      child: Card(
        color: Colors.white,
        elevation: 10,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.orange, width: 3)),
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PartnerWidget(
                    width: width,
                    partner: 'PRAGMATIC PLAY',
                    logo: 'assets/pragmatic.jpeg',
                    height: height),
                PartnerWidget(
                    width: width,
                    partner: 'BETRADAR',
                    logo: 'assets/betradar.png',
                    height: height),
                PartnerWidget(
                    width: width,
                    partner: 'BETSOFT',
                    logo: 'assets/betsoft.png',
                    height: height),
                PartnerWidget(
                    width: width,
                    partner: 'CONCEPT GAMING',
                    logo: 'assets/concept.png',
                    height: height),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Container(
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: CupertinoColors.darkBackgroundGray),
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Center(
                        child: Text(
                          'WORK WITH US',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 22.5,
                              fontFamily: 'pop2'),
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PartnerWidget extends StatelessWidget {
  final String partner;
  final String logo;
  final double height;
  final double width;
  const PartnerWidget(
      {super.key,
      required this.partner,
      required this.logo,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
            image: AssetImage(logo),
            height: height * 0.09,
            width: width * 0.125),
        SizedBox(height: 20),
        Text(partner, style: TextStyle(color: Colors.grey, fontFamily: 'pop2'))
      ],
    );
  }
}
