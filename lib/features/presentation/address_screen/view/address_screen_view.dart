import 'package:flutter/material.dart';

import '../widgets/Adress_screen_body.dart';

class AdressScreenView extends StatelessWidget {
  const AdressScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: AdressScreenBody()),
    );
  }
}
