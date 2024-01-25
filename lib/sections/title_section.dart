// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_website/sections/section_mixin.dart';
import 'package:flutter/material.dart';

import '../consts.dart';
import '../utils/utils.dart';

class TitleSection extends StatelessWidget with SectionWidget {
  TitleSection({super.key}) {
    sectionKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: sectionKey,
      height: getScreenHeight(context) * kTitleSectionHeightFactor,
      child: Stack(
        children: [
          Opacity(
            opacity: kTitleSectionBGIOpacity,
            child: Image.asset(
              "assets/images/bin_code.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      getScreenWidth(context) * kHorizontalPaddingFactor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi! I'm",
                        style: TextStyle(fontSize: 50.0),
                      ),
                      Text(
                        "Diogo",
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "<A Computer Engineering Student/>",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: kTitleSectionAvatarRadius,
                    backgroundImage: AssetImage("assets/images/photo.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
