// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_website/sections/section.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget with SectionWidget {
  AboutSection({super.key}) {
    sectionKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      key: sectionKey,
      height: screenHeight,
      color: Colors.black,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 5.0),
                  Text(
                    "About Me",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                "I am a Computer Engineering student with a passion "
                "for technology. When I'm not working on coding projects, you can often find me playing games, "
                "watching sci-fi movies or reading a good book (probably fiction). "
                "I'm always looking for a new challenge and new things to learn, "
                "specially when it comes to programming.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
