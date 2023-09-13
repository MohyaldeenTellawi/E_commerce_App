import 'package:flutter/material.dart';
import 'package:lazaapp/core/widgets/custom_app_drawer.dart';

import '../widgets/screen_eight_body.dart';

// ignore: must_be_immutable
class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: HomeScreenBody(),
      ),
      drawer: CustomAppDrawe(),
    );
  }
}
