import 'package:cloud_firestore/cloud_firestore.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopWidget(
                keyMain: key,
              ),
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
              childAspectRatio: 0.75,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
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
            builder: (context, sizingInformation) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopWidget(keyMain: key),
                  Image.network(
                    article['image'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: sizingInformation.isDesktop ? 500 : 400,
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizingInformation.isDesktop ? 32 : 16,
                        vertical: 10),
                    child: Text(
                      article['title'],
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'pop2'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding:
                        EdgeInsets.all(sizingInformation.isDesktop ? 64 : 32),
                    child: Text(
                      article['description'],
                      style:
                          const TextStyle(fontSize: 12.5, fontFamily: 'pop2'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Text(
                          "Date: ${article['date']}",
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'pop2'),
                        ),
                      ),
                    ],
                  ),
                  BottomBar()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
