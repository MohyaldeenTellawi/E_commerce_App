import 'package:flutter/material.dart';
import '../widgets/screen_two_body.dart';

class AuthScreenView extends StatelessWidget {
  const AuthScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        body: ScreenTwoBody(),
      ),
    );
  }
}
