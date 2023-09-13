import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';

import '../widgets/screen1_body.dart';

class StartScreenView extends StatelessWidget {
  const StartScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: secondBackgroundColor,
        body: const StartScreenBody(),
      ),
    );
  }
}
