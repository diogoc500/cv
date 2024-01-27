import 'package:cv_website/consts.dart';
import 'package:cv_website/sections/section_mixin.dart';
import 'package:cv_website/utils/section_widget.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class SkillsSection extends StatelessWidget with SectionWidget {
  static const int _skillsPerRow = 2;

  late final List<String> _skills;
  late List<TableRow> _tableRows;

  SkillsSection({super.key}) {
    sectionKey = GlobalKey();
    initSkills();
    initRows();
  }

  void initSkills() {
    _skills = [
      "Dart",
      "Flutter",
      "Python",
      "React JS",
      "Java",
      "C",
      "SQL",
      ".NET",
      "Rust",
    ];
  }

  void initRows() {
    _tableRows = [];
    List<SkillCell> buffer = [];

    // Has to be +1 in case of leftovers. skill length may not be
    // a multiple of _skillsPerRow
    int numRows = (_skills.length / _skillsPerRow).floor();
    numRows = _skills.length % _skillsPerRow == 0 ? numRows : numRows + 1;

    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < _skillsPerRow; j++) {
        int skillIndex = _skillsPerRow * i + j;
        // If out of bounds
        if (skillIndex >= _skills.length) {
          // Fill rest of buffer with blank. A table cannot have holes.
          for (int k = 0; k < _skillsPerRow - buffer.length; k++) {
            buffer.add(const SkillCell(skill: ""));
          }
          break;
        }
        buffer.add(SkillCell(skill: _skills[skillIndex]));
      }
      _tableRows.add(TableRow(children: [...buffer]));
      buffer.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      sectionKey: sectionKey,
      iconData: kSkillsSectionIconData,
      titleString: kSkillsSectionTitleString,
      backgroundColor: kSkillsSectionBackgroundColor,
      child: Table(
          border: TableBorder.symmetric(
            inside: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          defaultColumnWidth: FixedColumnWidth(
            isMobileView(context)
                ? kSkillsSectionSkillCellWidthMobile
                : kSkillsSectionSkillCellWidthDefault,
          ),
          children: _tableRows),
    );
  }
}

class SkillCell extends StatelessWidget {
  final String skill;
  const SkillCell({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        isMobileView(context)
            ? kSkillsSectionSkillCellPaddingMobile
            : kSkillsSectionSkillCellPaddingDefault,
      ),
      child: Text(
        skill,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isMobileView(context)
              ? kSkillsSectionTableFontSizeMobile
              : kSkillsSectionTableFontSizeDefault,
        ),
      ),
    );
  }
}
