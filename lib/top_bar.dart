import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xpgmain/custom_drawer.dart';

class TopWidget2 extends SliverPersistentHeaderDelegate {
  final GlobalKey<ScaffoldState> keyMain;
  TopWidget2({required this.keyMain});

  OverlayEntry? _overlayEntry;
  final GlobalKey _dropdownKey = GlobalKey();
  bool _isHovering = false;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? SizedBox(
                height: 120,
                width: width,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                context.go('/');
                              },
                              child: Image(
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                        child: Icon(Icons.image_not_supported));
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
                                  height: 75),
                            ),
                            SizedBox(width: 50),
                            // TextButton(
                            //     onPressed: () {
                            //       context.go('/company/0');
                            //     },
                            //     child: Text(
                            //       'COMPANY',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.bold,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 15),
                            //     )),
                            // HoverMenu(
                            //   title: Text('COMPANY',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.w900,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 17.5)),
                            //   items: [
                            //     ListTile(
                            //         onTap: () => context.go('/about-xpg'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'About XPG',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/fair-gaming'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Fair Gaming',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/live-studios'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Live Studios',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //   ],
                            // ),
                            // Container(width: 1, color: Colors.grey, height: 20),
                            // HoverMenu(
                            //   title: Text('SOLUTIONS',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.w900,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 17.5)),
                            //   items: [
                            //     ListTile(
                            //         onTap: () => context.go('/api-integration'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'API Integrations',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/mobile'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Mobile Solutions',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/private-tables'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Private Tables',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/white-labels'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'White Labels',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //   ],
                            // ),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/games');
                                },
                                child: Text(
                                  'LIVE GAMES',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/articles');
                                },
                                child: Text(
                                  'NEWS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/contacts');
                                },
                                child: Text(
                                  'CONTACTS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            // Container(width: 1, color: Colors.grey, height: 20),
                            // TextButton(
                            //     onPressed: () {
                            //       launchUrl(
                            //           Uri.parse('https://www.xpgdemo.com/'));
                            //     },
                            //     child: Text(
                            //       'LIVE DEMO',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.w900,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 17.5),
                            //     )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/xpgbaccarat');
                                },
                                child: Text(
                                  'XPG BACCARAT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: CupertinoColors.darkBackgroundGray,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                    )),
              )
            : SizedBox(
                height: height * 0.075,
                width: width,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              context.go('/');
                            },
                            child: Image(
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                      child: Icon(Icons.image_not_supported));
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
                          IconButton(
                              onPressed: () => keyMain.currentState
                                  ?.showBottomSheet((context) =>
                                      CustomDrawerContent(keyMain: keyMain)),
                              icon: Icon(Icons.menu))
                        ])),
              ));
  }

  void _showDropdown(BuildContext context) {
    if (_overlayEntry == null) {
      _overlayEntry = _createDropdown(context);
      Overlay.of(context).insert(_overlayEntry!);
    }
  }

  void _hideDropdown() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _createDropdown(BuildContext context) {
    RenderBox renderBox =
        _dropdownKey.currentContext?.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        left: position.dx,
        top: position.dy + size.height,
        child: MouseRegion(
          onEnter: (_) => _setHoverState(true),
          onExit: (_) => _setHoverState(false),
          child: Material(
            elevation: 4,
            child: Container(
              width: 200,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildMenuItem(context, "Live Casino"),
                  _buildMenuItem(context, "Slots"),
                  _buildMenuItem(context, "Game Shows"),
                  _buildMenuItem(context, "Live Poker"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title) {
    return InkWell(
      onTap: () {
        print("Selected: $title");
        _hideDropdown();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  void _setHoverState(bool isHovering) {
    _isHovering = isHovering;

    if (!isHovering) {
      _hideDropdown();
    }
  }

  Widget _buildNavItem(BuildContext context, String title,
      {bool isDropdown = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        key: isDropdown ? _dropdownKey : null,
        onEnter: isDropdown ? (_) => _showDropdown(context) : null,
        onExit: isDropdown ? (_) => _hideDropdown() : null,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            decoration:
                _isHovering && isDropdown ? TextDecoration.underline : null,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 90;

  @override
  double get minExtent => 90;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class TopWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> keyMain;
  const TopWidget({super.key, required this.keyMain});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? SizedBox(
                height: height * 0.075,
                width: width,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                context.go('/');
                              },
                              child: Image(
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                        child: Icon(Icons.image_not_supported));
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
                            SizedBox(width: 50),
                            // TextButton(
                            //     onPressed: () {
                            //       context.go('/company/0');
                            //     },
                            //     child: Text(
                            //       'COMPANY',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.bold,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 15),
                            //     )),
                            // HoverMenu(
                            //   title: Text('COMPANY',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.w900,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 17.5)),
                            //   items: [
                            //     ListTile(
                            //         onTap: () => context.go('/about-xpg'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'About XPG',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/fair-gaming'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Fair Gaming',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/live-studios'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Live Studios',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //   ],
                            // ),
                            // Container(width: 1, color: Colors.grey, height: 20),
                            // HoverMenu(
                            //   title: Text('SOLUTIONS',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.w900,
                            //           color: Colors.black,
                            //           fontFamily: 'pop2',
                            //           fontSize: 17.5)),
                            //   items: [
                            //     ListTile(
                            //         onTap: () => context.go('/api-integration'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'API Integrations',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/mobile'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Mobile Solutions',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/private-tables'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'Private Tables',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //     ListTile(
                            //         onTap: () => context.go('/white-labels'),
                            //         tileColor: Colors.cyan,
                            //         title: Text(
                            //           'White Labels',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //               fontFamily: 'pop2',
                            //               fontSize: 15),
                            //         )),
                            //   ],
                            // ),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/games');
                                },
                                child: Text(
                                  'LIVE GAMES',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/articles');
                                },
                                child: Text(
                                  'NEWS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/contacts');
                                },
                                child: Text(
                                  'CONTACTS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  launchUrl(
                                      Uri.parse('https://www.xpgdemo.com/'));
                                },
                                child: Text(
                                  'LIVE DEMO',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                            Container(width: 1, color: Colors.grey, height: 20),
                            TextButton(
                                onPressed: () {
                                  context.go('/xpgbaccarat');
                                },
                                child: Text(
                                  'XPG BACCARAT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontFamily: 'pop2',
                                      fontSize: 17.5),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                    )),
              )
            : SizedBox(
                height: height * 0.075,
                width: width,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              context.go('/');
                            },
                            child: Image(
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                      child: Icon(Icons.image_not_supported));
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
                          IconButton(
                              onPressed: () => keyMain.currentState
                                  ?.showBottomSheet((context) =>
                                      CustomDrawerContent(keyMain: keyMain)),
                              icon: Icon(Icons.menu))
                        ])),
              ));
  }
}

class CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final GlobalKey<ScaffoldState> keyMain;
  CustomHeaderDelegate({required this.keyMain});
  final Map<GlobalKey, OverlayEntry> _activeMenus = {};
  final Map<GlobalKey, bool> _isHovered = {};

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => sizingInformation.isDesktop
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          splashFactory: NoSplash.splashFactory,
                          focusColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onTap: () {
                            context.go('/');
                          },
                          child: Image(
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                    child: Icon(Icons.image_not_supported));
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
                              height: 75),
                        ),
                        InkWell(
                            splashFactory: NoSplash.splashFactory,
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: () => context.go('/about-xpg'),
                            child: _buildNavItem(context, "WHO WE ARE",
                                isDropdown: true)),
                        Container(
                          height: 20,
                          color: Color.fromRGBO(93, 198, 201, 1),
                          width: 0.5,
                        ),
                        InkWell(
                            splashFactory: NoSplash.splashFactory,
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: () => context.go('/articles'),
                            child: _buildNavItem(context, "NEWS")),
                        Container(
                          height: 20,
                          color: Color.fromRGBO(93, 198, 201, 1),
                          width: 0.5,
                        ),
                        InkWell(
                            splashFactory: NoSplash.splashFactory,
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: () => context.go('/games'),
                            child: _buildNavItem(context, "OUR GAMES",
                                isDropdown: true)),
                        Container(
                          height: 20,
                          color: Color.fromRGBO(93, 198, 201, 1),
                          width: 0.5,
                        ),
                        InkWell(
                            splashFactory: NoSplash.splashFactory,
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: () =>
                                launchUrl(Uri.parse('https://mltsolution.bg/')),
                            child: _buildNavItem(context, "CAREERS")),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => launchUrl(Uri.parse(
                                    'https://mistyrose-woodpecker-280650.hostingersite.com/')),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
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
                    )
                  ],
                ),
              )
            : SizedBox(
                height: height * 0.09,
                width: width,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              context.go('/');
                            },
                            child: Image(
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                      child: Icon(Icons.image_not_supported));
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
                                height: height * 0.09),
                          ),
                          IconButton(
                              onPressed: () => keyMain.currentState
                                  ?.showBottomSheet((context) =>
                                      CustomDrawerContent(keyMain: keyMain)),
                              icon: Icon(Icons.menu))
                        ])),
              ));
  }

  final Map<String, GlobalKey> dropdownKeys = {
    "WHO WE ARE": GlobalKey(),
    "OUR GAMES": GlobalKey(),
  };

  Widget _buildNavItem(BuildContext context, String title,
      {bool isDropdown = false}) {
    final dropdownKey = dropdownKeys[title];

    if (isDropdown && dropdownKey == null) {
      throw Exception(
          "DropdownKey for '$title' is not found. Ensure it is registered in the dropdownKeys map.");
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        key: isDropdown ? dropdownKey : null,
        onEnter: isDropdown
            ? (_) => _handleHover(context, dropdownKey!, true, title)
            : null,
        onExit: isDropdown
            ? (_) => _handleHover(context, dropdownKey!, false, title)
            : null,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.5,
            fontFamily: 'pop2',
          ),
        ),
      ),
    );
  }

  void _handleHover(BuildContext context, GlobalKey dropdownKey,
      bool isHovering, String title) {
    _isHovered[dropdownKey] = isHovering;

    if (isHovering) {
      _showDropdown(context, dropdownKey, title);
    } else {
      //Future.delayed(Duration(milliseconds: 100), () {
      if (!_isHovered.values.any((hovered) => hovered)) {
        _hideDropdown(dropdownKey);
      }
      // });
    }
  }

  void _checkAllMenus(BuildContext context) {
    //Future.delayed(Duration(milliseconds: 100), () {
    bool anyMenuHovered = _isHovered.values.any((hovered) => hovered);

    if (!anyMenuHovered) {
      print("No menus are hovered, hiding all...");
      _hideAllMenus();
    }
    //});
  }

  void _showDropdown(
      BuildContext context, GlobalKey dropdownKey, String title) {
    if (!_activeMenus.containsKey(dropdownKey)) {
      if (dropdownKey.currentContext == null) return;

      final overlayEntry = _createDropdown(context, dropdownKey, title);
      _activeMenus[dropdownKey] = overlayEntry;
      Overlay.of(context).insert(overlayEntry);
    }
  }

  void _hideDropdown(GlobalKey dropdownKey) {
    if (_activeMenus.containsKey(dropdownKey)) {
      _activeMenus[dropdownKey]!.remove();
      _activeMenus.remove(dropdownKey);
    }
  }

  void _hideAllMenus() {
    for (var entry in _activeMenus.values) {
      entry.remove();
    }
    _activeMenus.clear();
  }

  Future<List<Map<String, String>>> fetchGamesFromFirestore() async {
    final snapshot = await FirebaseFirestore.instance.collection('games').get();
    return snapshot.docs.map((doc) {
      return {
        "id": doc.id,
        "title": doc["title"] as String,
      };
    }).toList();
  }

  OverlayEntry _createDropdown(
      BuildContext context, GlobalKey dropdownKey, String title) {
    if (dropdownKey.currentContext == null) {
      throw Exception(
          "DropdownKey context is null. Ensure the widget is mounted.");
    }
    RenderBox renderBox =
        dropdownKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    return OverlayEntry(
      builder: (context) {
        if (title == "OUR GAMES") {
          return _buildGamesDropdown(context, dropdownKey, position, size);
        } else if (title == "WHO WE ARE") {
          return _buildWhoWeAreDropdown(context, dropdownKey, position, size);
        } else {
          return SizedBox
              .shrink(); // Dla innych nagłówków, jeśli nie ma dropdownu
        }
      },
    );
  }

  Widget _buildGamesDropdown(
      BuildContext context, GlobalKey dropdownKey, Offset position, Size size) {
    return Positioned(
      left: position.dx,
      top: position.dy + size.height,
      child: FutureBuilder<List<Map<String, String>>>(
        future: fetchGamesFromFirestore(), // Fetch danych gier
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Material(
              elevation: 4,
              child: Container(
                width: 400,
                height: 200,
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (snapshot.hasError) {
            return Material(
              elevation: 4,
              child: Container(
                alignment: Alignment.center,
                child: Text("Error loading games"),
              ),
            );
          }

          final games = snapshot.data ?? [];

          return MouseRegion(
            onEnter: (_) =>
                _handleHover(context, dropdownKey, true, "OUR GAMES"),
            onExit: (_) =>
                _handleHover(context, dropdownKey, false, "OUR GAMES"),
            child: Material(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: CustomPaint(
                      size: Size(20, 10),
                      painter: TrianglePainter(),
                    ),
                  ),
                  Container(
                    width: 800,
                    color: Color.fromRGBO(93, 198, 201, 1),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: buildDropdownContent(context, games),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildDropdownContent(
      BuildContext context, List<Map<String, String>> games) {
    // Podział elementów na wiersze (każdy wiersz ma maksymalnie 3 elementy)
    final rows = <Row>[];
    for (int i = 0; i < games.length; i += 5) {
      rows.add(
        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Równe odstępy między elementami
          children: games
              .sublist(
                  i,
                  i + 5 > games.length
                      ? games.length
                      : i + 5) // Maksymalnie 3 elementy
              .map((game) => Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: InkWell(
                        onTap: () {
                          context.go('/games/${game['id']}');
                          _hideAllMenus();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: game['title'] == "Baccarat"
                              ? Column(
                                  children: [
                                    Text(
                                      'New Game!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'pop2',
                                        color: Colors.red,
                                      ),
                                    ),
                                    Text(
                                      game['title']!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'pop2',
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              : Text(
                                  game['title']!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'pop2',
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rows,
    );
  }

  Widget _buildWhoWeAreDropdown(
      BuildContext context, GlobalKey dropdownKey, Offset position, Size size) {
    return Positioned(
      left: position.dx - 50,
      top: position.dy + size.height,
      child: MouseRegion(
        onEnter: (_) => _handleHover(context, dropdownKey, true, "WHO WE ARE"),
        onExit: (_) => _handleHover(context, dropdownKey, false, "WHO WE ARE"),
        child: Material(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomPaint(
                size: Size(20, 10),
                painter: TrianglePainter(),
              ),
              Container(
                width: 200,
                color: Color.fromRGBO(93, 198, 201, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildMenuItem(context, "About XPG"),
                    _buildMenuItem(context, "Fair Gaming"),
                    _buildMenuItem(context, "Live Studios"),
                    _buildMenuItem(context, "API Integration"),
                    _buildMenuItem(context, "Mobile Solutions"),
                    _buildMenuItem(context, "Private Tables"),
                    _buildMenuItem(context, "White Labels"),
                    _buildMenuItem(context, "Partners")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title) {
    return InkWell(
      onTap: () {
        if (title == 'About XPG') {
          context.go('/about-xpg');
        }
        if (title == 'Fair Gaming') {
          context.go('/fair-gaming');
        }
        if (title == 'Live Studios') {
          context.go('/live-studios');
        }
        if (title == 'API Integration') {
          context.go('/api-integration');
        }
        if (title == 'Mobile Solutions') {
          context.go('/mobile');
        }
        if (title == 'Private Tables') {
          context.go('/private-tables');
        }
        if (title == 'White Labels') {
          context.go('/white-labels');
        }
        if (title == 'Partners') {
          context.go('/partners');
        }
        _hideAllMenus();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'pop2',
              fontWeight: FontWeight.w100),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromRGBO(93, 198, 201, 1)
      ..style = PaintingStyle.fill; // Wypełnienie kolorem

    final path = Path()
      ..moveTo(size.width / 2, 0) // Wierzchołek górny (środek górnej krawędzi)
      ..lineTo(size.width, size.height) // Dolny prawy róg
      ..lineTo(0, size.height) // Dolny lewy róg
      ..close(); // Zamknięcie ścieżki

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
