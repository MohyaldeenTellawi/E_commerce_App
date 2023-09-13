import 'package:flutter/material.dart';
import '../widgets/screen_seven_body.dart';

class NewPasswordScreenView extends StatelessWidget {
  const NewPasswordScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: NewPasswordScreenBody()),
    );
  }
}
