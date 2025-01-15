import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LatestArticlesListView extends StatelessWidget {
  const LatestArticlesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('news')
          .orderBy('date', descending: true)
          .limit(3) // Tylko trzy najnowsze artykuły
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
          builder: (context, sizingInformation) => SizedBox(
            width: width,
            child: Center(
              child: sizingInformation.isDesktop
                  ? SizedBox(
                      height: height * 0.45,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          final article =
                              articles[index].data() as Map<String, dynamic>;
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: NewsWidget(
                                id: snapshot.data!.docs[index].id,
                                image: article['image'],
                                title: article['title'],
                                description: article['description'],
                                date: article['date']),
                          );
                        },
                      ),
                    )
                  : ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        final article =
                            articles[index].data() as Map<String, dynamic>;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: NewsWidget(
                              id: snapshot.data!.docs[index].id,
                              image: article['image'],
                              title: article['title'],
                              description: article['description'],
                              date: article['date']),
                        );
                      },
                    ),
            ),
          ),
        );
      },
    );
  }
}

class NewsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String date;
  final String id;
  const NewsWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.date,
      required this.id});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: () => context.go('/articles/$id'),
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => SizedBox(
          width: sizingInformation.isDesktop ? width * 0.2 : width * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image(
                        image: NetworkImage(image),
                        height: sizingInformation.isDesktop
                            ? height * 0.2
                            : height * 0.25),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: sizingInformation.isDesktop
                            ? width * 0.05
                            : width * 0.175,
                        height: 30,
                        color: Colors.black,
                        child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Center(
                              child: Text(date,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'pop2',
                                      fontSize: 10)),
                            )),
                      ),
                    ))
                  ],
                ),
                SizedBox(height: height * 0.01),
                Text(title,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'pop2',
                      fontSize: 20,
                    )),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: sizingInformation.isDesktop
                        ? width * 0.17
                        : width * 0.7,
                    child: Text(
                        maxLines: 3,
                        description,
                        style: TextStyle(
                            color: Colors.grey,
                            //fontFamily: 'pop2',
                            fontSize: 12.5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
