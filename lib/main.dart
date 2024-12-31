import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xpgmain/MainScreen/news.dart';
import 'package:xpgmain/screens/company.dart';
import 'package:xpgmain/screens/contacts.dart';
import 'package:xpgmain/screens/games.dart';
import 'package:xpgmain/screens/solutions.dart';
import 'package:xpgmain/screens/xpg_baccarat.dart';

import 'MainScreen/main_screen.dart';

void main() {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MyHomePage(),
      ),
      GoRoute(
        path: '/games/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return Games(id: int.parse(id!));
        },
      ),
      GoRoute(
        path: '/company',
        builder: (context, state) => Company(),
      ),
      GoRoute(
        path: '/contacts',
        builder: (context, state) => Contacts(),
      ),
      GoRoute(
        path: '/news',
        builder: (context, state) => News(),
      ),
      GoRoute(
        path: '/solutions',
        builder: (context, state) => Solutions(),
      ),
      GoRoute(
        path: '/xpgbaccarat',
        builder: (context, state) => XpgBaccarat(),
      ),
    ],
  );

  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'XPG',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
