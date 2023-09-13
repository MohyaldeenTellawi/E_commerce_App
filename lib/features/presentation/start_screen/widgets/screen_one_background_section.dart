import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';

class BackgroundSection extends StatelessWidget {
  const BackgroundSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: AspectRatio(
            aspectRatio: .6,
            child: SizedBox(
              width: 375,
              height: 812,
              child: Image.asset(
                backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
