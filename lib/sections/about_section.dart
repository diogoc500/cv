// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_website/consts.dart';
import 'package:cv_website/sections/section_mixin.dart';
import 'package:cv_website/utils/section_widget.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget with SectionWidget {
  AboutSection({super.key}) {
    sectionKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      sectionKey: sectionKey,
      iconData: kAboutSectionIconData,
      titleString: kAboutSectionTitleString,
      backgroundColor: kAboutSectionBackgroundColor,
      child: Column(
        children: [
          TextBlock(text: kAboutSectionDescription),
          SizedBox(height: 20.0),
          TextBlock(text: kAboutSectionLanguages),
        ],
      ),
    );
  }
}

class TextBlock extends StatelessWidget {
  final String text;
  const TextBlock({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(fontSize: 18.0),
    );
  }
}
