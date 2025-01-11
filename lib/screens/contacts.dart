import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpgmain/top_bar.dart';

import '../bottom_bar.dart';
import '../drawer.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    GlobalKey<ScaffoldState> key = GlobalKey();
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        key: key,
        drawer: MainDrawer(),
        backgroundColor: Colors.white,
        body: ResponsiveBuilder(
            builder: (context, sizingInformation) => sizingInformation.isDesktop
                ? CustomScrollView(
                    slivers: [
                      SliverPersistentHeader(
                          delegate: CustomHeaderDelegate(keyMain: key)),
                      SliverFillRemaining(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Write to us!',
                                            style: TextStyle(
                                                fontFamily: 'pop2',
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 35)),
                                        SizedBox(height: 25),
                                        SizedBox(
                                          width: 450,
                                          child: Form(
                                            key: formKey,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextFormField(
                                                  style: TextStyle(
                                                      fontFamily: 'pop2'),
                                                  controller: nameController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Your Name',
                                                    labelStyle: TextStyle(
                                                        fontFamily: 'pop2'),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your name';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(height: 16),
                                                TextFormField(
                                                  style: TextStyle(
                                                      fontFamily: 'pop2'),
                                                  controller: emailController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Your Email',
                                                    labelStyle: TextStyle(
                                                        fontFamily: 'pop2'),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your email';
                                                    }
                                                    final emailRegex = RegExp(
                                                        r'^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+\$');
                                                    if (!emailRegex
                                                        .hasMatch(value)) {
                                                      return 'Please enter a valid email address';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(height: 16),
                                                TextFormField(
                                                  style: TextStyle(
                                                      fontFamily: 'pop2'),
                                                  controller: messageController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Your Message',
                                                    labelStyle: TextStyle(
                                                        fontFamily: 'pop2'),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  maxLines: 5,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your message';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(height: 24),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    if (formKey.currentState!
                                                        .validate()) {
                                                      // Simulate email sending
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                              'Message sent successfully!'),
                                                          backgroundColor:
                                                              Colors.green,
                                                        ),
                                                      );
                                                      nameController.clear();
                                                      emailController.clear();
                                                      messageController.clear();
                                                    }
                                                  },
                                                  child: Text('Send Message',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'pop2',
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 125),
                                    Container(
                                        height: 400,
                                        width: 5,
                                        color: Colors.black),
                                    SizedBox(width: 125),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('You can also call us',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 35,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'pop2')),
                                        SizedBox(height: 50),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone,
                                              size: 35,
                                              color: Colors.black,
                                            ),
                                            SizedBox(width: 25),
                                            Text('+421 911 628 998',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 35,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2')),
                                          ],
                                        ),
                                        SizedBox(height: 50),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.email,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                            SizedBox(width: 25),
                                            Text('info@xprogaming.com',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'pop2')),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.place,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                            SizedBox(width: 25),
                                            Text('Bratislava, Slovakia',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'pop2')),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 225),
                              BottomBar()
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : CustomScrollView(
                    slivers: [
                      SliverPersistentHeader(
                          delegate: CustomHeaderDelegate(keyMain: key)),
                      SliverFillRemaining(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Write to us!',
                                            style: TextStyle(
                                                fontFamily: 'pop2',
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 35)),
                                        SizedBox(height: 25),
                                        SizedBox(
                                          width: width * 0.8,
                                          child: Form(
                                            key: formKey,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextFormField(
                                                  style: TextStyle(
                                                      fontFamily: 'pop2'),
                                                  controller: nameController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Your Name',
                                                    labelStyle: TextStyle(
                                                        fontFamily: 'pop2'),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your name';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(height: 16),
                                                TextFormField(
                                                  style: TextStyle(
                                                      fontFamily: 'pop2'),
                                                  controller: emailController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Your Email',
                                                    labelStyle: TextStyle(
                                                        fontFamily: 'pop2'),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your email';
                                                    }
                                                    final emailRegex = RegExp(
                                                        r'^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+\$');
                                                    if (!emailRegex
                                                        .hasMatch(value)) {
                                                      return 'Please enter a valid email address';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(height: 16),
                                                TextFormField(
                                                  style: TextStyle(
                                                      fontFamily: 'pop2'),
                                                  controller: messageController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Your Message',
                                                    labelStyle: TextStyle(
                                                        fontFamily: 'pop2'),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  maxLines: 5,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your message';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(height: 24),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    if (formKey.currentState!
                                                        .validate()) {
                                                      // Simulate email sending
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                              'Message sent successfully!'),
                                                          backgroundColor:
                                                              Colors.green,
                                                        ),
                                                      );
                                                      nameController.clear();
                                                      emailController.clear();
                                                      messageController.clear();
                                                    }
                                                  },
                                                  child: Text('Send Message',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'pop2',
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 25),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('You can also call us',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 35,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'pop2')),
                                        SizedBox(height: 50),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone,
                                              size: 35,
                                              color: Colors.black,
                                            ),
                                            SizedBox(width: 25),
                                            Text('+421 911 628 998',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 35,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'pop2')),
                                          ],
                                        ),
                                        SizedBox(height: 50),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.email,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                            SizedBox(width: 25),
                                            Text('info@xprogaming.com',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'pop2')),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.place,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                            SizedBox(width: 25),
                                            Text('Bratislava, Slovakia',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'pop2')),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              BottomBar()
                            ],
                          ),
                        ),
                      ),
                    ],
                  )));
  }
}
