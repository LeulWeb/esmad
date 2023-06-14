import 'package:esmad/constants/color_theme.dart';
import 'package:flutter/material.dart';
import './screen/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    home: const MyWidget(),
    debugShowCheckedModeBanner: false,
    title: "ESMAD",
    theme: ThemeData(
      primaryColor: kdarkNavy,
      scaffoldBackgroundColor: klight,
    ),
  ));
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Splash(),
    );
  }
}
