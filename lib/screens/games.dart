import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:xpgmain/MainScreen/top_bar.dart';

class Games extends StatefulWidget {
  final int id;
  const Games({super.key, required this.id});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  int selectedGameIndex = 0; // Domyślnie zaznaczona gra

  // Lista gier
  final List<Map<String, dynamic>> games = [
    {
      'id': 1,
      'title': 'Wheel of Fortune',
      'description': [
        'It is hard to walk through any casino without hearing that wheel spinning around and the shout from the game show that goes with it. Providing our clients with remarkable features, XPG has developed one of the most popular games of chance to create the amazing atmosphere of a real casino. XPG Wheel of Fortune consists of a large spinning wheel split into a number of segments with a pointer, which indicates the winning segment. It contains 54 stops where there are paper money in various denominations from single dollar bills all the way up to 20.',
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FwheelMain.jpg?alt=media&token=06081b32-5743-4870-af1e-267510042552",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FwheelIcon.png?alt=media&token=1f8a1cfa-77b4-493f-8511-0a292ae77b7a',
    },
    {
      'id': 2,
      'title': 'Andar Bahar',
      'description': [
        'Andar Bahar also called Katti is a very popular casino game in many countries such as India, Arab, Pakistan. Especially, Indians have recognized it as their symbolic game. XPG is the only software provider on the live casino gaming market to bring Live Andar Bahar for XPG operators and players. The game offers a premise similar to Dragon Tiger, from one side, and a level of intrigue of Baccarat, from another.'
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FandarMain.jpg?alt=media&token=8cde094a-2548-4f29-98bd-7239e1e03ed1",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FandarIcon.png?alt=media&token=2fc4b25a-d601-4ca2-969b-d73de361ca5d',
    },
    {
      'id': 3,
      'title': 'Roulette',
      'description': [
        "XPG Live Roulette confirms the fact that online casinos can compete with land-based casinos. We offer a host of distinct variations of the game for different types of players, each with their own dynamic, but with familiar roulette experience at the core.",
        "Players will lose themselves in classic European Roulette, elevate the dynamic in Fast Roulette, try something new in exotic Dragon Roulette, appreciate superior experience in VIP Roulette or enjoy the simplicity of Auto Roulette, as we wanted players to enjoy the game anywhere while feeling they are in a casino."
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FrouletteMain.jpg?alt=media&token=28ca9931-b634-43e1-a037-5aee9528bd6d",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FrouletteIcon.png?alt=media&token=1fe1e136-0477-44e0-875e-91723041b4aa',
    },
    {
      'id': 4,
      'title': 'Blackjack',
      'description': [
        "XPG Live Blackjack is better than one in a land-based casino for a reason. The game takes place in our Live studios that have a classic casino design, resembling a real land-based casino, but enhanced with modern features and complemented by presence of our experienced and chatty dealers in the relaxed and laidback atmosphere.",
        "Moreover, XPG Live Blackjack tables have an advanced feature - Bet Behind that allows players to make a bet on another player’s hand to all 7 main Blackjack seats.",
        "XPG also offers Unlimited Blackjack, the next evolution live version of this classic game with limitless number of players at a single table and extra revenue potential for our live casino operators."
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FblackjackMain.jpg?alt=media&token=3dc9c02d-c47a-4b9e-89e6-50f78251826c",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FblackJackIcon.png?alt=media&token=a88f4c90-1e80-481d-b358-7216a5f2241a',
    },
    {
      'id': 5,
      'title': 'Baccarat',
      'description': [
        'Being the Asia’s most popular casino table game, Baccarat maintains the high level of popularity in the online gaming world for its socalled high-roller players who like to play for really high stakes. In course of Live Baccarat gameplay, players quickly sink into our endlessly dynamic, intriguing and steadily paced Live version of the game, keeping them on the edge of their sits every single game, all the way – no matter where they are.'
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FbaccaratMain.jpg?alt=media&token=f0ef46ef-27b0-435b-ab09-ee1ab9686038",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FbaccaratIcon.png?alt=media&token=efbd9c5c-dc46-4f59-b0ae-30f6b56ee909',
    },
    {
      'id': 6,
      'title': 'Dragon Tiger',
      'description': [
        'The Dragon Tiger game originated in Cambodia is admired by many Asian players, because it has resemblance with Baccarat, as a player doesn’t play against the dealer but rather chooses a hand to bet on. Each Dragon Tiger game is always a thrilling rollercoaster ride emotionally, as every bet depends on the player’s luck.',
        'Our Live version of the game is exactly like a classic Dragon Tiger game. With XPG Dragon Tiger players will experience every high and low of one of the most dynamic casino games – just as they would in a real casino. Familiar table design and full range of side bets, coupled with easy-to-follow interface and genuine appeal of our dealers, make the game authentic and thoroughly enjoyable.'
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FdragonMain.jpg?alt=media&token=8e15ca46-ac3b-489a-b161-ebc909884b0b",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FdragonIcon.png?alt=media&token=368f7652-3078-4d00-b301-4790fb293848',
    },
    {
      'id': 7,
      'title': 'Sic Bo',
      'description': [
        'Being the dice game of ancient Chinese origin and known worldwide, Sic Bo is one of the simplest yet most captivating casino games available. The Sic Bo board can look complex at first, but once player understands the layout, the game is very simple to play. Three dice are tossed in a small cage by the dealer, and a player bets on the results of the throw.',
        'XPG brings to the players the most essential Sic Bo experience that includes the full range of side bets and same captivating thrill that goes along with every single dice roll. Experiencing the usual ecstatic highs & lows and blazing intrigue the game is known for, players quickly forget they immersed into our Live Sic Bo in no time at all.'
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FsicboMain.jpg?alt=media&token=39249bb9-6fac-409b-8ab0-b3abd35a6765",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FsicboIcon.png?alt=media&token=0869d27b-c7fb-4773-98cf-bb538841c6af',
    },
    {
      'id': 8,
      'title': "Texas Hold'em Bonus",
      'description': [
        'XPG version of this game is perfect for players who grew tired of fussy full-table games and who just want to relax playing their favorite game, a pleasure hard to refuse.',
        'In Single Texas Hold’em Poker each player receives two cards face down, after which 5 community cards are dealt face-up, in three stages. Each player attempts to use their own cards and the community cards to create the best hand, making for plenty of anticipation and excitement.',
        'XPG Live Single Texas Hold’em also has its twist, offering a set of payouts that will enhance the usual poker experience and make it more rewarding. Players are immersed in a free-and-easy, laidback atmosphere as they play solely against our charming and communicative dealers.'
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FtexasMain.jpg?alt=media&token=dfc885c5-a9af-431c-89dc-c8bc19ca3835",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FtexasIcon.png?alt=media&token=21964f58-46a0-4e5b-b82b-c3c7715787f9',
    },
    {
      'id': 9,
      'title': 'Multiplayer Poker',
      'description': [
        'Exclusively on private tables, our Live Multiplayer Texas Hold’em offers your players the essential Hold’em experience and number of customization options to you. Integrating our poker tables into your platform, you make it simple for your players to play within the same player liquidity but on fully-branded physical tables with live dealers. Place advertising and Live promotions during the game. Choose the language dealer speaks. Brand dealers outfit, cards, table and more!',
        'Give your poker room the highest exposure, the best reputation, and create loyalty among your most valuable players. Create a lucrative new revenue stream for your business.'
      ],
      'main':
          "https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino2%2FpokerMain.jpg?alt=media&token=4653bcfc-37e6-450c-946e-7940599e5f1a",
      'image':
          'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casino%2FpokerIcon.png?alt=media&token=12d592b4-b737-4024-a65e-02238a466d78',
    },
  ];

  @override
  void initState() {
    super.initState();
    // Ustawienie gry na podstawie ID z linku
    final initialIndex = games.indexWhere((game) => game['id'] == widget.id);
    if (initialIndex != -1) {
      selectedGameIndex = initialIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final selectedGame = games[selectedGameIndex];
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TopWidget(),
          Column(
            children: [
              Stack(
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
                      image: NetworkImage(games[selectedGameIndex]['main']),
                      width: width,
                      height: height * 0.7,
                      fit: BoxFit.cover),
                  Padding(
                      padding: EdgeInsets.only(top: 325, left: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(games[selectedGameIndex]['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'pop2',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80)),
                        ],
                      ))
                ],
              ),
              // Lista gier (menu)
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: games.asMap().entries.map((entry) {
                      final index = entry.key;
                      final game = entry.value;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedGameIndex = index; // Zmiana zaznaczonej gry
                            context.go(
                                '/games/${game['id']}'); // Aktualizacja linku
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 16.0,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: selectedGameIndex == index
                                    ? Colors.orange
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image(
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
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
                                  image: NetworkImage(game['image']),
                                  height: 50),
                              const SizedBox(height: 4),
                              Text(
                                game['title'],
                                style: TextStyle(
                                  color: selectedGameIndex == index
                                      ? Colors.orange
                                      : Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              // Wyświetlane szczegóły gry
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Tekst
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedGame['title'],
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'pop2',
                                color: Colors.orange),
                          ),
                          const SizedBox(height: 16),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: selectedGame['description'].length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                selectedGame['description'][index],
                                style: const TextStyle(
                                    fontSize: 16,
                                    height: 1.5,
                                    fontFamily: 'pop2'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Obraz gry
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
                      image: NetworkImage(selectedGame['image']),
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.05)
          //BottomBar()
        ],
      ),
    ));
  }
}
