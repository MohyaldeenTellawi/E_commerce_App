import 'package:flutter/material.dart';
import 'package:lazaapp/features/presentation/start_screen/widgets/screen_one_Container_section.dart';

import 'package:lazaapp/features/presentation/start_screen/widgets/screen_one_background_section.dart';

class StartScreenBody extends StatelessWidget {
  const StartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [BackgroundSection(), ContainerSection()],
    );
  }
}
