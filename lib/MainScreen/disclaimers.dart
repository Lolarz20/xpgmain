import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Disclaimers extends StatelessWidget {
  const Disclaimers({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => launchUrl(
                        Uri.parse('https://www.gambleaware.org/home/')),
                    child: Image(
                        image: AssetImage('assets/begambleaware.png'),
                        height: 30),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse('https://ecogra.org/')),
                    child: Image(
                        image: AssetImage('assets/ecogra.png'), height: 30),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://www.gamstop.co.uk/')),
                    child: Image(
                        image: AssetImage('assets/gamstop.png'), height: 30),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () =>
                        launchUrl(Uri.parse('https://www.mga.org.mt/')),
                    child: Image(
                        image: AssetImage('assets/MGA-logo-new.png'),
                        height: 30),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () => launchUrl(
                        Uri.parse('https://www.gamblingcommission.gov.uk/')),
                    child:
                        Image(image: AssetImage('assets/ukgc.png'), height: 30),
                  ),
                  SizedBox(width: 25),
                  Image(image: AssetImage('assets/18-logo.png'), height: 30),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => launchUrl(
                            Uri.parse('https://www.gambleaware.org/home/')),
                        child: Image(
                            image: AssetImage('assets/begambleaware.png'),
                            height: 25),
                      ),
                      SizedBox(width: 25),
                      InkWell(
                        onTap: () =>
                            launchUrl(Uri.parse('https://ecogra.org/')),
                        child: Image(
                            image: AssetImage('assets/ecogra.png'), height: 25),
                      ),
                      SizedBox(width: 25),
                      InkWell(
                        onTap: () =>
                            launchUrl(Uri.parse('https://www.gamstop.co.uk/')),
                        child: Image(
                            image: AssetImage('assets/gamstop.png'),
                            height: 25),
                      ),
                      SizedBox(width: 25),
                      InkWell(
                        onTap: () =>
                            launchUrl(Uri.parse('https://www.mga.org.mt/')),
                        child: Image(
                            image: AssetImage('assets/MGA-logo-new.png'),
                            height: 25),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => launchUrl(Uri.parse(
                            'https://www.gamblingcommission.gov.uk/')),
                        child: Image(
                            image: AssetImage('assets/ukgc.png'), height: 25),
                      ),
                      SizedBox(width: 25),
                      Image(
                          image: AssetImage('assets/18-logo.png'), height: 25),
                    ],
                  ),
                ],
              ));
  }
}
