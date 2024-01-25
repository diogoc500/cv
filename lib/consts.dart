// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

const bool kIsDebugMode = true;

const String kMaterialAppTitle = "Diogo Costa CV";
const double kHorizontalPaddingFactor = 0.2;

const ColorScheme kColorScheme = ColorScheme.dark();

// ===== Footer =====
const double kFooterHeight = 25.0;
const String kFooterMessage = "Diogo Costa @ 2024";

// ===== Title Section =====
const double kTitleSectionHeightFactor = 0.85;
const double kTitleSectionBGIOpacity = 0.2;
const double kTitleSectionAvatarRadius = 150.0;
const IconData kTitleSectionIconData = Icons.home;

// ===== About Section =====
const double kAboutSectionHeightFactor = 0.5;
const IconData kAboutSectionIconData = Icons.person;
const String kAboutSectionTitleString = "About Me";
final Color kAboutSectionBackgroundColor = kColorScheme.background;
const String kAboutSectionText =
    "I am a Computer Engineering student with a passion "
    "for technology. When I'm not working on coding projects, you can often find me playing games, "
    "learning a new language or reading a good book (probably fiction). "
    "I'm always looking for a new challenge and new things to learn, "
    "specially when it comes to programming.";

// ===== Experience Section =====
const double kExperienceSectionHeightFactor = 0.5;
const IconData kExperienceSectionIconData = Icons.work;
const String kExperienceSectionTitleString = "Experience";
final Color kExperienceSectionBackgroundColor = kColorScheme.onPrimary;
