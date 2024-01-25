import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final IconData iconData;
  final String title;

  final double? iconSize;
  final double distance;
  final double fontSize;

  const SectionTitle({
    super.key,
    required this.iconData,
    required this.title,
    this.iconSize,
    this.distance = 5.0,
    this.fontSize = 25.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: iconSize,
        ),
        SizedBox(width: distance),
        Text(
          title,
          style: TextStyle(fontSize: fontSize),
        ),
      ],
    );
  }
}
