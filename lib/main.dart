import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xpgmain/MainScreen/news.dart';
import 'package:xpgmain/screens/company.dart';
import 'package:xpgmain/screens/contacts.dart';
import 'package:xpgmain/screens/games.dart';
import 'package:xpgmain/screens/games_page.dart';
import 'package:xpgmain/screens/news.dart';
import 'package:xpgmain/screens/partners.dart';
import 'package:xpgmain/screens/solutions.dart';
import 'package:xpgmain/screens/xpg_baccarat.dart';
import 'package:xpgmain/splitted_company/about_xpg.dart';
import 'package:xpgmain/splitted_company/fair_gaming.dart';
import 'package:xpgmain/splitted_company/live_studios.dart';
import 'package:xpgmain/splitted_solutions/api_integration.dart';
import 'package:xpgmain/splitted_solutions/mobile.dart';
import 'package:xpgmain/splitted_solutions/private_tables.dart';
import 'package:xpgmain/splitted_solutions/white_label.dart';

import 'MainScreen/main_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final GoRouter router = GoRouter(
    errorBuilder: (context, state) {
      return Center(child: Text('Page not found'));
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MyHomePage(),
      ),
      GoRoute(path: '/about-xpg', builder: (context, state) => AboutXpg()),
      GoRoute(path: '/fair-gaming', builder: (context, state) => FairGaming()),
      GoRoute(
          path: '/live-studios', builder: (context, state) => LiveStudios()),
      GoRoute(
          path: '/api-integration',
          builder: (context, state) => ApiIntegration()),
      GoRoute(path: '/mobile', builder: (context, state) => Mobile()),
      GoRoute(
          path: '/private-tables',
          builder: (context, state) => PrivateTables()),
      GoRoute(path: '/white-labels', builder: (context, state) => WhiteLabel()),
      GoRoute(
        path: '/games/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return GameDetailsPage(gameId: id);
        },
      ),
      GoRoute(
        path: '/games',
        builder: (context, state) => GamesWidget(),
      ),
      GoRoute(
        path: '/company',
        builder: (context, state) => Company(offset: 0.0),
      ),
      GoRoute(
        path: '/company/:offset',
        builder: (context, state) {
          final offset = state.pathParameters['offset'];
          final parsedOffset = double.tryParse(offset ?? '0.0') ?? 0.0;
          return Company(offset: parsedOffset);
        },
      ),
      GoRoute(
        path: '/contacts',
        builder: (context, state) => Contacts(),
      ),
      GoRoute(
        path: '/articles',
        builder: (context, state) => const News(),
      ),
      GoRoute(
        path: '/articles/latest',
        builder: (context, state) => const LatestArticlesListView(),
      ),
      GoRoute(
        path: '/articles/:id',
        builder: (context, state) =>
            ArticleDetailPage(articleId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/solutions',
        builder: (context, state) => Solutions(0.0),
      ),
      GoRoute(
        path: '/partners',
        builder: (context, state) => Partners(),
      ),
      GoRoute(
        path: '/solutions/:offset',
        builder: (context, state) {
          final offset = state.pathParameters['offset'];
          if (offset == null || int.tryParse(offset) == null) {
            return Center(child: Text('Invalid game ID'));
          }
          return Solutions(double.parse(offset.toString() == 'solutions'
              ? 0.0.toString()
              : offset.toString()));
        },
      ),
      GoRoute(
        path: '/xpgbaccarat',
        builder: (context, state) => XpgBaccarat(),
      ),
    ],
  );

  runApp(MyApp(router: router));
}

class DragScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch, // Dotyk (np. na telefonach)
    PointerDeviceKind.mouse, // Przeciąganie myszką
  };
}

class MyApp extends StatelessWidget {
  final GoRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      scrollBehavior: DragScrollBehavior(),
      title: 'XPG',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
