import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final IconData iconData;
  final String title;

  const SectionTitle({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData),
        const SizedBox(width: 5.0),
        Text(
          title,
          style: const TextStyle(fontSize: 25.0),
        ),
      ],
    );
  }
}
