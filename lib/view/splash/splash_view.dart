import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../res/constants.dart';
import '../home/home.dart';
import 'componenets/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Lottie animation for splash screen
            Lottie.asset(
              'assets/animation/portfolio.json',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
            SizedBox(height: defaultPadding),
            AnimatedLoadingText(), // Optional loading text animation
          ],
        ),
      ),
    );
  }
}
