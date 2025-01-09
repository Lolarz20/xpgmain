import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
      Icon(Icons.casino, color: Colors.blueGrey),
      Icon(Icons.local_library, color: Colors.blueGrey),
      Icon(Icons.html, color: Colors.blueGrey),
      Icon(Icons.settings, color: Colors.blueGrey),
    ];
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => SizedBox(
        width: width,
        height: sizingInformation.isDesktop ? 100 : 275,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: sizingInformation.isDesktop ? 0 : 10,
              horizontal: sizingInformation.isDesktop ? 250 : 10),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: title.length,
            scrollDirection:
                sizingInformation.isDesktop ? Axis.horizontal : Axis.vertical,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SolutionWidget(
                  title: title[index], desc: desc[index], icon: icon[index]),
            ),
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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
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
                width: sizingInformation.isDesktop ? width * 0.15 : width * 0.7,
                child: Text(desc,
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'pop2',
                        fontSize: 12.5)),
              )
            ],
          )
        ],
      ),
    );
  }
}
