// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_design_task/ui/widgets/splash_screen_space.dart';
import 'package:flutter_ui_design_task/ui/widgets/splash_screen_titleButton.dart';

class OnBoardingPageWidget extends StatelessWidget {
  OnBoardingPageWidget(
      {super.key,
      required this.imagePath,
      required this.titleText,
      required this.subtitleText});
  String imagePath, titleText, subtitleText;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: size.height / 5,
        ),
        splash_screen_titleButton(size, titleText),
        spaceMethod(context),
        Text(subtitleText)
      ],
    );
  }
}
