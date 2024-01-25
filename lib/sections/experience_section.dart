// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_website/sections/section_mixin.dart';
import 'package:flutter/material.dart';

import '../consts.dart';
import '../utils/section_widget.dart';

class ExperienceSection extends StatelessWidget with SectionWidget {
  ExperienceSection({super.key}) {
    sectionKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Section(
        sectionKey: sectionKey,
        heightFactor: kExperienceSectionHeightFactor,
        iconData: kExperienceSectionIconData,
        titleString: kExperienceSectionTitleString,
        backgroundColor: kExperienceSectionBackgroundColor,
        child: Table());
  }
}
