import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/ui/screens/HomePage_screen.dart';
import 'package:flutter_ui_design_task/ui/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui Design Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingScreen(),
    );
  }
}
