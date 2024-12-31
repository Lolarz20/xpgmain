import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';

class GamesWidget extends StatelessWidget {
  const GamesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fwheel.jpg?alt=media&token=cdd26d4b-8ce5-4e06-91ad-1c4d200d7f20',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fandarbahar.jpg?alt=media&token=20f44b02-d720-483a-9afa-278979890193',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Froulette.jpg?alt=media&token=243936a9-5e2c-4aec-844a-201c3f5803a9',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fblackjack.jpg?alt=media&token=58129da2-199b-48d3-a566-b553614db312',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fbaccarat.jpg?alt=media&token=cd69178a-63b6-4697-9519-ddd429951862',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fdragon.jpg?alt=media&token=861c0dcc-4d6e-4d1c-9a87-45e8f28ae35d',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fsicbo.jpg?alt=media&token=95c91ed5-6bd5-4ee6-919a-b5e1bd8a7a6c',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Ftexas.jpg?alt=media&token=236b1806-6f21-47f2-9e62-c9ca2e23fa20',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fpoker.jpg?alt=media&token=f8015018-fd63-402e-8784-00e65e717ec6',
      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fpoker2.jpg?alt=media&token=66ac7e46-873e-4c29-8ba0-e4d10e8dad40',
    ];
    List<String> title = [
      'WHEEL OF FORTUNE',
      'ANDAR BAHAR',
      'ROULETTE',
      'BLACKJACK',
      'BACCARAT',
      'DRAGON TIGER',
      'SIC BO',
      "TEXAS HOLD'EM BONUS",
      'CARIBBEAN STUD POKER',
      'MULTIPLAYER POKER',
    ];
    List<String> description = [
      'Classic American Wheel of Fortune game',
      'Classic Indian game Andar Bahar',
      'Variations of European, VIP, Auto, and Dragon Roulette',
      'Classic and Unlimited Blackjack',
      'Variations of Classic, Fast and Super Six Baccarat',
      'Classic and Fast variations of Asian game Dragon Tiger',
      'Classic Asian game Sic Bo',
      "Single Poker Live Casino Hold'em Bonus",
      'Classic Caribbean Stud Poker',
      "Multiplayer Texas Hold'em Bonus",
    ];
    final width = MediaQuery.sizeOf(context).width;
    return Container(
        width: width,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: image.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context.go('/games/${index + 1}');
                  },
                  child: BuildTile(
                      image: image[index],
                      title: title[index],
                      description: description[index]),
                )));
  }
}

class BuildTile extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const BuildTile(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
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
                  image: NetworkImage(image),
                  width: width * 0.15,
                ),
              ),
              SizedBox(height: 10),
              Text(title,
                  style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'pop2',
                      fontSize: 22.5)),
              Text(description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: CupertinoColors.darkBackgroundGray,
                      fontFamily: 'pop2',
                      fontSize: 17.5)),
            ],
          ),
        ),
      ),
    );
  }
}
