import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:splash/Splash/splash1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(seconds: 3),
      splash: Column(
      children: [
        Center(
          child: LottieBuilder.asset("Lottie/animation.json"),
        )
      ],
    ), nextScreen: Splash2(),
    splashIconSize: 500,
    );
  }
}