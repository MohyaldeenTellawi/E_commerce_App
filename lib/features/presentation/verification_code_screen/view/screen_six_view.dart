import 'package:flutter/material.dart';

import '../widgets/screen_six_body.dart';

class VerfiCodeScreenView extends StatelessWidget {
  const VerfiCodeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: VerfiCodeScreenBody()),
    );
  }
}
