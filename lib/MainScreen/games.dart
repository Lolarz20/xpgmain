import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamesWidget extends StatelessWidget {
  const GamesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/wheel.jpg',
      'assets/andarbahar.jpg',
      'assets/roulette.jpg',
      'assets/blackjack.jpg',
      'assets/baccarat.jpg',
      'assets/dragon.jpg',
      'assets/sicbo.jpg',
      'assets/texas.jpg',
      'assets/poker.jpg',
      'assets/poker2.jpg',
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
    final height = MediaQuery.sizeOf(context).height;
    return Container(
        width: width,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: image.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (context, index) => BuildTile(
                image: image[index],
                title: title[index],
                description: description[index])));
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
                  image: AssetImage(image),
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
