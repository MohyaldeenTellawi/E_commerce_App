import 'package:flutter/material.dart';

import '../widgets/screen_five_body.dart';

class ForgetPasswordScreenView extends StatelessWidget {
  const ForgetPasswordScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: ForgetPasswordScreenBody()),
    );
  }
}
