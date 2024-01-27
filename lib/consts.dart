// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

const bool kIsDebugMode = true;

const String kMaterialAppTitle = "Diogo Costa CV";
const double kHorizontalPaddingFactorDefault = 0.2;
const double kHorizontalPaddingFactorMobile = 0.1;
const double kVerticalPadding = 100.0;

const ColorScheme kColorScheme = ColorScheme.dark();

// ===== Footer =====
const double kFooterHeight = 25.0;
const String kFooterMessage = "Diogo Costa @ 2024";

// ===== Tables =====
const double kTableHeaderIconSize = 17.0;
const double kTableHeaderDistance = 5.0;
const double kTableHeaderFontSize = 17.0;

// ===== Title Section =====
const double kTitleSectionHeightFactor = 0.85;
const double kTitleSectionBGIOpacity = 0.2;
const double kTitleSectionAvatarRadius = 150.0;
const IconData kTitleSectionIconData = Icons.home;

// ===== About Section =====
const IconData kAboutSectionIconData = Icons.person;
const String kAboutSectionTitleString = "About Me";
final Color kAboutSectionBackgroundColor = kColorScheme.background;
const String kAboutSectionDescription =
    "I am a Computer Engineering Masters student at NOVA with a passion "
    "for technology. When I'm not working on coding projects, you can often find me playing games, "
    "learning a new language or reading a good book (probably fiction). "
    "I'm always looking for a new challenge and new things to learn, "
    "specially when it comes to programming.";
const String kAboutSectionLanguages =
    "I'm a native Portuguese speaker, but can also speak English. I've been learning Dutch and German in my spare time.";

// ===== Experience Section =====
const IconData kExperienceSectionIconData = Icons.work;
const String kExperienceSectionTitleString = "Experience";
final Color kExperienceSectionBackgroundColor = kColorScheme.onPrimary;

// ===== Skills Section =====
const IconData kSkillsSectionIconData = Icons.code;
const String kSkillsSectionTitleString = "Skills";
final Color kSkillsSectionBackgroundColor = kColorScheme.background;

const double kSkillsSectionTableFontSizeDefault = 20.0;
const double kSkillsSectionSkillCellWidthDefault =
    kSkillsSectionTableFontSizeDefault * 10;

const double kSkillsSectionTableFontSizeMobile = 15.0;
const double kSkillsSectionSkillCellWidthMobile =
    kSkillsSectionTableFontSizeMobile * 10;

const double kSkillsSectionSkillCellPaddingDefault = 8.0;
const double kSkillsSectionSkillCellPaddingMobile = 2.0;

// ===== Contact Section =====
const IconData kContactSectionIconData = Icons.email;
const String kContactSectionTitleString = "Contact";
final Color kContactSectionBackgroundColor = kColorScheme.onPrimary;
const double kContactSectionContactIconSize = 80.0;
