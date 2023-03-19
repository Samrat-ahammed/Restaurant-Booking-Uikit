import 'package:flutter/material.dart';

StatefulBuilder selectbottomTitle(
    Size size, String text, onTap, Color textcolor, Color ilenColor) {

  return StatefulBuilder(builder: (context, setState) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: size.height / 50, color: textcolor),
          ),
          SizedBox(
            height: size.height / 100,
          ),
          Container(
            decoration: BoxDecoration(
              color: ilenColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: size.height / 300,
            width: size.width / 4.5,
          )
        ],
      ),
    );
  });
}
