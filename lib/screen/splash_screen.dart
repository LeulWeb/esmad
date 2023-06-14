import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import './home_screen.dart';
import '../constants/color_theme.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FlutterSplashScreen.scale(
          gradient:  LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              klight,
            ],
          ),
          childWidget: SizedBox(
            height: 75,
            child: Image.asset("assets/images/logo.png"),
          ),
          duration: const Duration(seconds: 5),
          animationDuration: const Duration(milliseconds: 1000),
          defaultNextScreen: const Home(),
        ),
    );
  }
}
