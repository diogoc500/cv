import 'dart:html' as html show window;

import 'package:cv_website/sections/about_section.dart';
import 'package:cv_website/sections/contact_section.dart';
import 'package:cv_website/sections/experience_section.dart';
import 'package:cv_website/sections/section_mixin.dart';
import 'package:cv_website/sections/skills_section.dart';
import 'package:cv_website/sections/title_section.dart';
import 'package:cv_website/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'consts.dart';

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  late final TitleSection titleSection;
  late final AboutSection aboutSection;
  late final ExperienceSection experienceSection;
  late final SkillsSection skillsSection;
  late final ContactSection contactSection;

  late final List<Widget> sections;

  HomePage({super.key}) {
    titleSection = TitleSection();
    aboutSection = AboutSection();
    experienceSection = ExperienceSection();
    skillsSection = SkillsSection();
    contactSection = ContactSection();

    sections = [
      titleSection,
      aboutSection,
      experienceSection,
      skillsSection,
      contactSection,
    ];
  }

  double getOffset(GlobalKey sectionKey) {
    double getWidgetHeight(GlobalKey sectionKey) {
      RenderBox renderBox =
          sectionKey.currentContext?.findRenderObject() as RenderBox;
      return renderBox.size.height;
    }

    double offset = 0.0; //AppBar().preferredSize.height;
    for (Widget section in sections) {
      SectionWidget sectionWidget = section as SectionWidget;
      if (sectionWidget.sectionKey == sectionKey) {
        break;
      }
      offset += getWidgetHeight(sectionWidget.sectionKey);
    }
    return offset;
  }

  void Function() _scrollToSection(GlobalKey sectionKey) {
    return () {
      final context = sectionKey.currentContext;
      if (context == null) {
        dprint("Context is null");
        return;
      }

      double offset = getOffset(sectionKey);
      dprint("Calculated offset: $offset");

      _scrollController.animateTo(
        offset,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    };
  }

  void openCv() {
    if (kIsWeb) {
      String pdfUrl = 'assets/assets/cv.pdf';
      html.window.open(pdfUrl, '_blank');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isMobileView(context) ? "DC" : "Diogo Costa"),
        centerTitle: !isMobileView(context),
        actions: <Widget>[
          // Title Section
          SectionAction(
            iconData: kTitleSectionIconData,
            onPressed: _scrollToSection(titleSection.sectionKey),
          ),
          // About Section
          SectionAction(
            iconData: kAboutSectionIconData,
            onPressed: _scrollToSection(aboutSection.sectionKey),
          ),
          // Experience Section
          SectionAction(
            iconData: kExperienceSectionIconData,
            onPressed: _scrollToSection(experienceSection.sectionKey),
          ),
          // Skills Section
          SectionAction(
            iconData: kSkillsSectionIconData,
            onPressed: _scrollToSection(skillsSection.sectionKey),
          ),
          // Contact Section
          SectionAction(
            iconData: kContactSectionIconData,
            onPressed: _scrollToSection(contactSection.sectionKey),
          ),
          // Download CV Button
          TextButton(onPressed: openCv, child: Text("Download CV")),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: sections,
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        // Footer content
        height: kFooterHeight, // Adjust the height as needed
        color: Colors.black, // Just for visibility
        child: const Center(
          child: Text(
            kFooterMessage,
          ),
        ),
      ),
    );
  }
}

class SectionAction extends StatelessWidget {
  final IconData iconData;
  final void Function()? onPressed;

  const SectionAction(
      {super.key, required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(iconData),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
