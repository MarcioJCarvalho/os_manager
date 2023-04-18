import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:os_manager/pages/home.dart';
import 'package:os_manager/utils/colors.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/132689-rocket-launch.json'),
      backgroundColor: backgroundColor,
      nextScreen: const Home(),
      duration: 4000,
    );
  }
}
