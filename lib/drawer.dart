import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  List<Map<String, dynamic>> games = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchGames(); // Pobierz dane z Firebase przy inicjalizacji
  }

  void fetchGames() async {
    try {
      // Pobieranie danych z Firebase
      final querySnapshot =
          await FirebaseFirestore.instance.collection('games').get();

      // Mapowanie dokumentów na listę map
      final fetchedGames = querySnapshot.docs
          .map((doc) => {'title': doc['title'], 'id': doc.id})
          .toList();

      setState(() {
        games = fetchedGames;
        isLoading = false; // Wyłącz ładowanie po zakończeniu pobierania
      });
    } catch (e) {
      setState(() {
        isLoading = false; // W razie błędu również wyłącz ładowanie
      });
      // Możesz tutaj dodać obsługę błędów
      debugPrint('Error fetching games: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.go('/');
              },
              child: Image(
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(child: Icon(Icons.image_not_supported));
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
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/casinoAll%2Fxpg.png?alt=media&token=c2c3a5ef-55cc-41d0-9498-fe0a7b22118d'),
                  height: height * 0.075),
            ),
            CustomExpansionTile(
              voidCallback: () => context.go('/company'),
              title: 'Company',
              children: [
                ListTile(
                  title: const Text('About XPG',
                      style: TextStyle(fontFamily: 'pop2')),
                  onTap: () => context.go('/about-xpg'),
                  contentPadding: const EdgeInsets.only(left: 32.0),
                ),
                ListTile(
                  title: const Text('Fair Gaming',
                      style: TextStyle(fontFamily: 'pop2')),
                  onTap: () => context.go('/fair-gaming'),
                  contentPadding: const EdgeInsets.only(left: 32.0),
                ),
                ListTile(
                  title: const Text('Live Studios',
                      style: TextStyle(fontFamily: 'pop2')),
                  onTap: () => context.go('/live-studios'),
                  contentPadding: const EdgeInsets.only(left: 32.0),
                ),
              ],
            ),
            CustomExpansionTile(
              voidCallback: () => context.go('/solutions'),
              title: 'Solutions',
              children: [
                ListTile(
                  title: const Text('API Integrations',
                      style: TextStyle(fontFamily: 'pop2')),
                  onTap: () => context.go('/api-integration'),
                  contentPadding: const EdgeInsets.only(left: 32.0),
                ),
                ListTile(
                  title: const Text('Mobile Solutions',
                      style: TextStyle(fontFamily: 'pop2')),
                  onTap: () => context.go('/mobile'),
                  contentPadding: const EdgeInsets.only(left: 32.0),
                ),
                ListTile(
                  title: const Text('Private Tables',
                      style: TextStyle(fontFamily: 'pop2')),
                  onTap: () => context.go('/private-tables'),
                  contentPadding: const EdgeInsets.only(left: 32.0),
                ),
                ListTile(
                  title: const Text('White Labels',
                      style: TextStyle(fontFamily: 'pop2')),
                  onTap: () => context.go('/white-labels'),
                  contentPadding: const EdgeInsets.only(left: 32.0),
                ),
              ],
            ),
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : CustomExpansionTile(
                    title: 'Live Games',
                    children: games.map((game) {
                      return ListTile(
                        title: Text(game['title'],
                            style: TextStyle(fontFamily: 'pop2')),
                        onTap: () => context.go('/games/${game['id']}'),
                        contentPadding: const EdgeInsets.only(left: 32.0),
                      );
                    }).toList(),
                    voidCallback: () {},
                  ),
            CustomExpansionTile(
              title: 'News',
              children: [],
              voidCallback: () => context.go('/articles'),
            ),
            CustomExpansionTile(
              title: 'Contacts',
              children: [],
              voidCallback: () => context.go('/contacts'),
            ),
            CustomExpansionTile(
              title: 'Live Demo',
              children: [],
              voidCallback: () =>
                  launchUrl(Uri.parse('https://www.xpgdemo.com/')),
            ),
            CustomExpansionTile(
              title: 'XPG Baccarat',
              children: [],
              voidCallback: () => context.go('/articles'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: CupertinoColors.darkBackgroundGray,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Center(
                            child: Text('Client Area',
                                style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                    fontSize: 12.5,
                                    fontFamily: 'pop2')),
                          )),
                    ),
                  ),
                  SizedBox(width: 25),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: CupertinoColors.darkBackgroundGray,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Center(
                            child: InkWell(
                              onTap: () => context.go('/contacts'),
                              child: Text('Contact Us',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white,
                                      fontFamily: 'pop2')),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final VoidCallback voidCallback;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    required this.children,
    required this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: GestureDetector(
        onTap: voidCallback,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'pop2'),
        ),
      ),
      trailing: children.isEmpty
          ? const SizedBox.shrink()
          : const Icon(Icons.add, color: Colors.grey),
      children: children,
    );
  }
}
