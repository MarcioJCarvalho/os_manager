import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:os_manager/pages/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/132689-rocket-launch.json'),
      // Column(
      //   children: [
      //     const Text(
      //       'Os Manager',
      //       style: TextStyle(
      //         fontSize: 40,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.cyan
      //         ),
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.deepPurple,
      nextScreen: const Home(),
      duration: 4000,
    );
  }
}
