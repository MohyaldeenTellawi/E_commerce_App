import 'package:flutter/material.dart';

import '../widgets/screen_three_body.dart';

class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        body: SingleChildScrollView(child: SignUpScreenBody()),
      ),
    );
  }
}
