import 'package:flutter/material.dart';

Text splash_screen_titleButton(Size size, String titleText) {
  return Text(
    titleText,
    style: TextStyle(
        fontSize: size.height / 35,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.1),
  );
}
