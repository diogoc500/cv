import 'package:cv_website/utils/section_title.dart';
import 'package:cv_website/utils/utils.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class Section extends StatelessWidget {
  final GlobalKey sectionKey;

  final double heightFactor;
  final IconData iconData;
  final String titleString;

  final Color backgroundColor;

  final Widget child;

  const Section({
    super.key,
    required this.sectionKey,
    required this.heightFactor,
    required this.iconData,
    required this.titleString,
    required this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey,
      height: getScreenHeight(context) * heightFactor,
      color: backgroundColor,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getScreenWidth(context) * kHorizontalPaddingFactor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SectionTitle(
                iconData: iconData,
                title: titleString,
              ),
              const SizedBox(height: 10.0),
              child
            ],
          ),
        ),
      ),
    );
  }
}
