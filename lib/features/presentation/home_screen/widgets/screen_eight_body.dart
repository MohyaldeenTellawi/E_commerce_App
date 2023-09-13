import 'package:flutter/material.dart';
import 'package:lazaapp/features/presentation/home_screen/widgets/buttom_section.dart';

import 'top_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TopSection(), BottomSection()],
    );
  }
}
