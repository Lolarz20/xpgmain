import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

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
                    logo:
                        'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fpragmatic.jpeg?alt=media&token=c261ef28-b3d0-4812-bf4d-53306cb7f047',
                    height: height),
                PartnerWidget(
                    width: width,
                    partner: 'BETRADAR',
                    logo:
                        'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fbetradar.png?alt=media&token=352b3f13-344f-49e0-bf00-ed1569f3ef6b',
                    height: height),
                PartnerWidget(
                    width: width,
                    partner: 'BETSOFT',
                    logo:
                        'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fbetsoft.png?alt=media&token=b1511cf3-d578-45de-bdba-6e87d62c2156',
                    height: height),
                PartnerWidget(
                    width: width,
                    partner: 'CONCEPT GAMING',
                    logo:
                        'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fconcept.png?alt=media&token=97eacc4b-4f3c-454a-899e-e052e8792381',
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
            image: NetworkImage(logo),
            height: height * 0.09,
            width: width * 0.125),
        SizedBox(height: 20),
        Text(partner, style: TextStyle(color: Colors.grey, fontFamily: 'pop2'))
      ],
    );
  }
}
