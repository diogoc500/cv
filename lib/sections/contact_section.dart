// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cv_website/consts.dart';
import 'package:cv_website/sections/section_mixin.dart';
import 'package:cv_website/utils/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget with SectionWidget {
  ContactSection({super.key}) {
    sectionKey = GlobalKey();
  }

  // Actions
  void emailAction() async {
    final Uri emailLaunchUri =
        Uri(scheme: 'mailto', path: "diogo.alex.nc@gmail.com");

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  void githubAction() async {
    _launchUrl("https://github.com/diogoc500");
  }

  void linkedinAction() async {
    _launchUrl("https://www.linkedin.com/in/diogo-alex-nc/");
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      sectionKey: sectionKey,
      iconData: kContactSectionIconData,
      titleString: kContactSectionTitleString,
      backgroundColor: kContactSectionBackgroundColor,
      child: Column(
        children: [
          Text("Interested? Here is where you can find me."),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Email
              Contact(
                iconData: Icons.email,
                label: "Email",
                onPressed: emailAction,
              ),
              // Github
              Contact(
                iconData: FontAwesomeIcons.github,
                label: "GitHub",
                onPressed: githubAction,
              ),
              // LinkedIn
              Contact(
                iconData: FontAwesomeIcons.linkedin,
                label: "Linked",
                onPressed: linkedinAction,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final IconData iconData;
  final String label;
  final void Function() onPressed;
  const Contact({
    super.key,
    required this.iconData,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(iconData, size: kContactSectionContactIconSize),
        ),
        Text(label),
      ],
    );
  }
}
