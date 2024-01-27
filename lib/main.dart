// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_website/consts.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

// TODO: Lower the resolution of the images used.
// TODO: Solve the 'scroll offset' bug.
// TODO: Do mobile view.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kMaterialAppTitle,
      theme: ThemeData(
        colorScheme: kColorScheme,
        useMaterial3: true,
      ),
      home: SelectionArea(
        child: HomePage(),
      ),
    );
  }
}
