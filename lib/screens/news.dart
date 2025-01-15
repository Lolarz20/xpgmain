import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/MainScreen/news.dart';
import 'package:xpgmain/top_bar.dart';

import '../bottom_bar.dart';
import '../drawer.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: MainDrawer(),
        key: key,
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                delegate: CustomHeaderDelegate(keyMain: key)),
            SliverFillRemaining(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('LATEST',
                            style: TextStyle(fontFamily: 'pop2', fontSize: 30)),
                        SizedBox(width: width * 0.005),
                        Text('NEWS',
                            style: TextStyle(
                                fontFamily: 'pop2',
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: width * 0.15,
                      height: 0.5,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(height: height * 0.05),
                    ArticlesGridView(),
                    SizedBox(height: height * 0.05),
                    BottomBar(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class ArticlesGridView extends StatelessWidget {
  const ArticlesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('news')
          .orderBy('date', descending: true) // Sortowanie po dacie
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text("No articles found."),
          );
        }

        final articles = snapshot.data!.docs;

        return ResponsiveBuilder(
          builder: (context, sizingInformation) => GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(8.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: sizingInformation.isDesktop ? 5 : 1,
            ),
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index].data() as Map<String, dynamic>;
              return NewsWidget(
                  image: article['image'],
                  title: article['title'],
                  description: article['description'],
                  date: article['date'],
                  id: articles[index].id);
            },
          ),
        );
      },
    );
  }
}

class ArticleDetailPage extends StatelessWidget {
  final String articleId;

  const ArticleDetailPage({super.key, required this.articleId});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final key = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.white,
      key: key,
      drawer: MainDrawer(),
      body: FutureBuilder<DocumentSnapshot>(
        future:
            FirebaseFirestore.instance.collection('news').doc(articleId).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text("Article not found."));
          }

          final article = snapshot.data!.data() as Map<String, dynamic>;

          return ResponsiveBuilder(
            builder: (context, sizingInformation) => CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                    delegate: CustomHeaderDelegate(keyMain: key)),
                SliverFillRemaining(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              article['image'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: sizingInformation.isDesktop ? 250 : 400,
                            ),
                            Container(
                              color: CupertinoColors.darkBackgroundGray
                                  .withOpacity(0.5),
                              width: double.infinity,
                              height: sizingInformation.isDesktop ? 250 : 400,
                            ),
                            Positioned.fill(
                                child: Align(
                              alignment: Alignment.center,
                              child: FadeInUp(
                                delay: Duration(milliseconds: 1000),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.center,
                                      article['title'],
                                      style: TextStyle(
                                          fontSize: sizingInformation.isDesktop
                                              ? 30
                                              : 20,
                                          color: Colors.white,
                                          fontFamily: 'pop2'),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      width: width * 0.25,
                                      color: Colors.white,
                                      height: 0.5,
                                    ),
                                    SizedBox(height: 15),
                                    Text(article['date'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'pop',
                                            fontSize: 12.5,
                                            fontStyle: FontStyle.italic))
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: sizingInformation.isDesktop? 400 : 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 25),
                                child: Text(
                                  textAlign: TextAlign.start,
                                  article['title'],
                                  style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'pop2'),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                textAlign: TextAlign.start,
                                article['description'],
                                style: const TextStyle(
                                    fontSize: 17.5, fontFamily: 'roboto'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50),
                        BottomBar()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
