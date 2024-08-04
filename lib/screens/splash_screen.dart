import 'package:flutter/material.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

import 'main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          backgroundColor: Colors.white,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset('lottie/lottie_curex.json'),
              const Text('CUREX', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),)
            ],
          ),
          splashIconSize: double.infinity,
          nextScreen: const MainPage()),
    );
  }
}