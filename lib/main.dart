// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_website/consts.dart';
import 'package:cv_website/sections/about_section.dart';
import 'package:cv_website/sections/contact_section.dart';
import 'package:cv_website/sections/experience_section.dart';
import 'package:cv_website/sections/section.dart';
import 'package:cv_website/sections/skills_section.dart';
import 'package:cv_website/sections/title_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kMaterialAppTitle,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

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
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diogo Costa"),
        centerTitle: true,
        actions: <Widget>[
          // Title Section
          IconButton(
            icon: Icon(Icons.title),
            onPressed: _scrollToSection(titleSection.sectionKey),
          ),
          // About Section
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: _scrollToSection(aboutSection.sectionKey),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: sections,
        ),
      ),
    );
  }
}
