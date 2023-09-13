import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';
import '../widget/splash_screen_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondBackgroundColor,
      body: const SplashScreenBody(),
    );
  }
}
