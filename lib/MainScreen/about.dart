import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:web_video_player/player.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 25),
        child: Card(
          elevation: 10,
          color: Colors.white,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.orange, width: 3)),
          child: Padding(
              padding: EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.3,
                        child: Text(
                          textAlign: TextAlign.left,
                          'XPG delivers a sophisticated and flexible Live Casino system to gaming operators, White Label providers, and entrepreneurs worldwide. Offering the widest selection of Live games, professional dealers, and state-of-the-art equipment, XPG sets the standard for exceptional Live gaming.',
                          style: TextStyle(
                              fontFamily: 'pop2',
                              fontSize: 20,
                              color: CupertinoColors.darkBackgroundGray),
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: width * 0.3,
                        child: Text(
                          textAlign: TextAlign.left,
                          'With 3 advanced studios in Bulgaria and Moldova, XPG combines top-of-the-line casino technology and appealing dealers to create a seamless and rewarding Live gaming experience for operators and players alike.',
                          style: TextStyle(
                              fontFamily: 'pop2',
                              fontSize: 15,
                              color: CupertinoColors.darkBackgroundGray),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            Widget playerWidget =
                                CircularProgressIndicator(color: Colors.orange);
                            final controller = VideoPlayerController.networkUrl(
                                Uri.parse(
                                    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/XproGaming%20-%20Live%20Dealer%20Casino%20-%20XPG.mp4?alt=media&token=4e522c20-10a6-439c-b86a-2fd26d0d2135'),
                                videoPlayerOptions: VideoPlayerOptions(
                                    allowBackgroundPlayback: true,
                                    webOptions: VideoPlayerWebOptions(
                                        allowRemotePlayback: true,
                                        allowContextMenu: false,
                                        controls: VideoPlayerWebOptionsControls
                                            .disabled())));
                            playerWidget = WebVideoPlayer(
                                url:
                                    'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/XproGaming%20-%20Live%20Dealer%20Casino%20-%20XPG.mp4?alt=media&token=4e522c20-10a6-439c-b86a-2fd26d0d2135',
                                autoPlay: true,
                                isFullscreen: true,
                                videoController: controller);
                            return Dialog(
                              child: playerWidget,
                            );
                          });
                    },
                    child: SizedBox(
                        width: width * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/a-lunch-e6ccd.firebasestorage.app/o/mainVideo-ezgif.com-video-to-gif-converter.gif?alt=media&token=f9ff78eb-09f8-4147-8b3e-47e8320fb063'),
                          ),
                        )
                        //child: playerWidget),
                        ),
                  ),
                ],
              )),
        ));
  }
}
