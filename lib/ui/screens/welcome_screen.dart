// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/ui/screens/create_account_screen.dart';
import 'package:flutter_ui_design_task/ui/widgets/bottomSheetForLoginAndCreatAccount.dart';
import 'package:flutter_ui_design_task/ui/widgets/splash_screen_space.dart';
import 'package:flutter_ui_design_task/ui/widgets/splash_screen_titleButton.dart';
import 'package:flutter_ui_design_task/ui/widgets/welcome_screen_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreenWidget extends StatelessWidget {
  WelcomeScreenWidget(
      {super.key,
      required this.size,
      required this.imagePath,
      required this.title,
      required this.text});

  final Size size;
  String imagePath, title, text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagePath,
          ),
          SizedBox(
            height: size.height / 10,
          ),
          splash_screen_titleButton(size, title),
          spaceMethod(context),
          Text(text),
          SizedBox(
            height: size.height / 10,
          ),
          WelcomeScreenButton(
            size: size,
            onTap: () async {
              bottomSheetForLoginAndCreatAccount(context);
            },
            text: 'Create Account',
          ),
          SizedBox(
            height: size.height / 50,
          ),
          WelcomeScreenButton(
            size: size,
            onTap: () {},
            text: 'Login',
            color: Colors.green,
            textColor: Color(0XFFFd1fae5),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  longText('By logging in or registering, you have agreed to '),
                  textButton('the Terms and', () {})
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textButton('Conditions', () {}),
                  longText(' And '),
                  textButton('Privacy Policy.', () {})
                ],
              )
            ],
          )
        ],
      ),
    );
  }


  Text longText(String text) => Text(
        text,
      );

  TextButton textButton(String text, onPressed) => TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size(size.width / 6, size.height / 50),
        ),
        onPressed: () {},
        child: Text(text),
      );
}
