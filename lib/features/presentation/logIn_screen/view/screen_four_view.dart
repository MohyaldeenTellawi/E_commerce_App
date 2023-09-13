import 'package:flutter/material.dart';
import '../widgets/screen_four_body.dart';

class LogInScreenView extends StatelessWidget {
  const LogInScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        body: SingleChildScrollView(child: LogInScreenBody()),
      ),
    );
  }
}
