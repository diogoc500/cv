import 'package:cv_website/sections/section.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget with SectionWidget {
  AboutSection({super.key}) {
    sectionKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey,
      height: 500,
      color: Colors.black,
      child: Center(
        child: Text("Hi"),
      ),
    );
  }
}
