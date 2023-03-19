import 'package:flutter/material.dart';

class WelcomeScreenButton extends StatelessWidget {
  WelcomeScreenButton(
      {super.key,
      required this.size,
      required this.onTap,
      required this.text,
      this.color,
      this.textColor});

  final Size size;
  String text;
  VoidCallback onTap;
  Color? color;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width / 1.4,
        padding: EdgeInsets.all(size.height / 70),
        decoration: BoxDecoration(
            color: color != null ? textColor : Colors.green,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor != null ? color : Colors.white,
              fontSize: size.height / 45,
            ),
          ),
        ),
      ),
    );
  }
}
