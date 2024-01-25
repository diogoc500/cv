// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cv_website/sections/section_mixin.dart';
import 'package:cv_website/utils/section_title.dart';
import 'package:cv_website/utils/utils.dart';
import 'package:flutter/material.dart';

import '../consts.dart';
import '../utils/section_widget.dart';

class ExperienceSection extends StatelessWidget with SectionWidget {
  late List<TableRow> work;
  late List<TableRow> workshops;

  ExperienceSection({super.key}) {
    sectionKey = GlobalKey();

    initExperienceLists();
  }

  void initExperienceLists() {
    work = [];
    workshops = [];

    work = [
      workTableEntry(
        jobTitle: "Internship Fullstack Developer - Axians",
        dateInterval: "March 2023 - August 2023 (5 Months)",
      ),
      workTableEntry(
        jobTitle: "Volunteer - ReFood",
        dateInterval: "February 2023 - January 2024 (11 Months)",
      ),
    ];

    workshops = [
      workTableEntry(
        jobTitle: "3D Modeling - Onshape",
        dateInterval: "15/02/2023",
      ),
      workTableEntry(
        jobTitle: "Arduino Introduction Workshop",
        dateInterval: "18/01/2023",
      ),
    ];
  }

  TableRow workTableEntry(
      {required String jobTitle, required String dateInterval}) {
    return TableRow(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(jobTitle, textAlign: TextAlign.center),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(dateInterval, textAlign: TextAlign.center),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      sectionKey: sectionKey,
      heightFactor: kExperienceSectionHeightFactor,
      iconData: kExperienceSectionIconData,
      titleString: kExperienceSectionTitleString,
      backgroundColor: kExperienceSectionBackgroundColor,
      child: Column(
        children: [
          Table(
            border: TableBorder.symmetric(
              inside: BorderSide(
                width: 1,
                color: Colors.grey,
              ),
            ),
            children: [
              // Header
              TableRow(
                children: [
                  HeaderLabel(iconData: Icons.work, labelText: "Work"),
                  HeaderLabel(
                      iconData: Icons.calendar_month, labelText: "Date"),
                ],
              ),
              //Entries
              ...work,
            ],
          ),
          SizedBox(
            height: 50.0,
            width: getScreenWidth(context) * 0.2,
          ),
          Table(
            border: TableBorder.symmetric(
              inside: BorderSide(
                width: 1,
                color: Colors.grey,
              ),
            ),
            children: [
              // Header
              TableRow(
                children: [
                  HeaderLabel(
                      iconData: Icons.construction, labelText: "Workshops"),
                  HeaderLabel(
                      iconData: Icons.calendar_month, labelText: "Date"),
                ],
              ),
              //Entries
              ...workshops,
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderLabel extends StatelessWidget {
  final IconData iconData;
  final String labelText;
  const HeaderLabel(
      {super.key, required this.iconData, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return SectionTitle(
      iconData: iconData,
      title: labelText,
      iconSize: kTableHeaderIconSize,
      distance: kTableHeaderDistance,
      fontSize: kTableHeaderFontSize,
    );
  }
}
