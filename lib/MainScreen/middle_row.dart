import 'package:flutter/material.dart';

class MiddleRow extends StatelessWidget {
  const MiddleRow({super.key});

  @override
  Widget build(BuildContext context) {
    const List title = [
      'GAMES',
      'EU STUDIOS',
      'HTML 5',
      'WHITE LABEL',
    ];
    const List desc = [
      'The biggest game portfolio of Live dealer and virtual games within one API',
      'Newly renovated state-of-the-art studios in the heart of Europe',
      'Cross-platform solution for non-stop gaming on any device and location',
      'Customized product package for operators based on region of operation',
    ];
    const List<Icon> icon = [
      Icon(Icons.casino, color: Colors.orange),
      Icon(Icons.local_library, color: Colors.orange),
      Icon(Icons.html, color: Colors.orange),
      Icon(Icons.settings, color: Colors.orange),
    ];
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 250),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: title.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SolutionWidget(
                title: title[index], desc: desc[index], icon: icon[index]),
          ),
        ),
      ),
    );
  }
}

class SolutionWidget extends StatelessWidget {
  final String title;
  final String desc;
  final Icon icon;
  const SolutionWidget(
      {super.key, required this.title, required this.desc, required this.icon});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'pop2',
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: width * 0.15,
              child: Text(desc,
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'pop2', fontSize: 12.5)),
            )
          ],
        )
      ],
    );
  }
}
