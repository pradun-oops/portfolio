// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});
  void _linkdinURL() async {
    const url = "https://www.linkedin.com/in/pradun-kumar-3846b3260/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _gitURL() async {
    const url = "https://github.com/pradun-oops?tab=repositories";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _gmailURL() async {
    const url = "https://mail.google.com/mail/u/0/#inbox";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {
                _linkdinURL();
              },
              icon: const FaIcon(
                FontAwesomeIcons.linkedinIn,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {
                _gitURL();
              },
              icon: const FaIcon(
                FontAwesomeIcons.github,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {
                _gmailURL();
              },
              icon: const FaIcon(
                FontAwesomeIcons.google,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.instagram,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
