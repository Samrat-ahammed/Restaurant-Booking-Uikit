
import 'package:flutter/material.dart';

class OnBoardingPageButtonWidget extends StatelessWidget {
  OnBoardingPageButtonWidget(
      {super.key,
      required this.controller,
      required this.onPressed,
      this.text});
  VoidCallback onPressed;
  String? text;

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: text != null
          ? Text(
              text ?? '',
              style: TextStyle(),
            )
          : const Icon(
              Icons.arrow_forward,
              color: Colors.green,
            ),
    );
  }
}
