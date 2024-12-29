import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    const List<String> image = [
      'assets/news1.jpg',
      'assets/news1.jpg',
      'assets/news1.jpg',
      'assets/news1.jpg',
      'assets/news1.jpg',
    ];
    const List<String> title = [
      'Launching Thrilling New Game - Thunder Roulette',
      'Launching Thrilling New Game - Thunder Roulette',
      'Launching Thrilling New Game - Thunder Roulette',
      'Launching Thrilling New Game - Thunder Roulette',
      'Launching Thrilling New Game - Thunder Roulette',
    ];
    const List<String> description = [
      'XPG is excited to announce the launch of our latest live casino game, Thunder Roulette, set to electrify the gaming experience for players worldwide. Thunder Roulette combines the classic excitement of traditional roulette with dynamic new features that amplify the thrill of each spin. In Thunder Roulette, players can enjoy high-definition streaming, professional dealers, and the chance to win enhanced payouts through randomly generated multipliers that strike like lightning on lucky numbers. This innovative twist on a casino favorite ensures an engaging and immersive experience, blending stunning visual effects with the timeless appeal of roulette. Join us at XPG and experience the electrifying excitement of Thunder Roulette, where every spin brings the potential for lightning-fast wins!',
      'XPG is excited to announce the launch of our latest live casino game, Thunder Roulette, set to electrify the gaming experience for players worldwide. Thunder Roulette combines the classic excitement of traditional roulette with dynamic new features that amplify the thrill of each spin. In Thunder Roulette, players can enjoy high-definition streaming, professional dealers, and the chance to win enhanced payouts through randomly generated multipliers that strike like lightning on lucky numbers. This innovative twist on a casino favorite ensures an engaging and immersive experience, blending stunning visual effects with the timeless appeal of roulette. Join us at XPG and experience the electrifying excitement of Thunder Roulette, where every spin brings the potential for lightning-fast wins!',
      'XPG is excited to announce the launch of our latest live casino game, Thunder Roulette, set to electrify the gaming experience for players worldwide. Thunder Roulette combines the classic excitement of traditional roulette with dynamic new features that amplify the thrill of each spin. In Thunder Roulette, players can enjoy high-definition streaming, professional dealers, and the chance to win enhanced payouts through randomly generated multipliers that strike like lightning on lucky numbers. This innovative twist on a casino favorite ensures an engaging and immersive experience, blending stunning visual effects with the timeless appeal of roulette. Join us at XPG and experience the electrifying excitement of Thunder Roulette, where every spin brings the potential for lightning-fast wins!',
      'XPG is excited to announce the launch of our latest live casino game, Thunder Roulette, set to electrify the gaming experience for players worldwide. Thunder Roulette combines the classic excitement of traditional roulette with dynamic new features that amplify the thrill of each spin. In Thunder Roulette, players can enjoy high-definition streaming, professional dealers, and the chance to win enhanced payouts through randomly generated multipliers that strike like lightning on lucky numbers. This innovative twist on a casino favorite ensures an engaging and immersive experience, blending stunning visual effects with the timeless appeal of roulette. Join us at XPG and experience the electrifying excitement of Thunder Roulette, where every spin brings the potential for lightning-fast wins!',
      'XPG is excited to announce the launch of our latest live casino game, Thunder Roulette, set to electrify the gaming experience for players worldwide. Thunder Roulette combines the classic excitement of traditional roulette with dynamic new features that amplify the thrill of each spin. In Thunder Roulette, players can enjoy high-definition streaming, professional dealers, and the chance to win enhanced payouts through randomly generated multipliers that strike like lightning on lucky numbers. This innovative twist on a casino favorite ensures an engaging and immersive experience, blending stunning visual effects with the timeless appeal of roulette. Join us at XPG and experience the electrifying excitement of Thunder Roulette, where every spin brings the potential for lightning-fast wins!',
    ];
    const List<String> date = [
      '29.12.2024',
      '29.12.2024',
      '29.12.2024',
      '29.12.2024',
      '29.12.2024',
    ];
    return SizedBox(
        height: height * 0.6,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: title.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: NewsWidget(
                      image: image[index],
                      title: title[index],
                      description: description[index],
                      date: date[index]),
                )));
  }
}

class NewsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String date;
  const NewsWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.date});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height * 0.525,
      width: width * 0.175,
      child: Card(
        elevation: 10,
        color: Colors.white,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.orange, width: 3)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child:
                      Image(image: AssetImage(image), height: height * 0.15)),
              SizedBox(height: height * 0.01),
              Text(title,
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'pop2',
                    fontSize: 20,
                  )),
              SizedBox(height: height * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width * 0.17,
                  height: height * 0.175,
                  child: Text(description,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          color: CupertinoColors.darkBackgroundGray,
                          fontFamily: 'pop2',
                          fontSize: 15)),
                ),
              ),
              SizedBox(height: height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(date,
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'pop2',
                          fontSize: 12.5))
                ],
              ),
              SizedBox(height: height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'READ MORE',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 17.5,
                        fontFamily: 'pop2'),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orange,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
