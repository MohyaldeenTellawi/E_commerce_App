import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/custom_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
            logoName: facebookLogo,
            imageWidth: 22,
            imageHeight: 22,
            textButton: 'FaceBook',
            onPressed: () {},
            backgroundColor: const Color.fromRGBO(66, 103, 178, 1),
            textColor: Colors.white,
            width: 335,
            height: 50),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
            logoName: twitterLogo,
            imageWidth: 22,
            imageHeight: 22,
            textButton: 'Twitter',
            onPressed: () {},
            backgroundColor: const Color.fromRGBO(29, 161, 242, 1),
            textColor: Colors.white,
            width: 335,
            height: 50),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
            logoName: googleLogo,
            imageWidth: 22,
            imageHeight: 22,
            textButton: 'Google',
            onPressed: () {},
            backgroundColor: const Color.fromRGBO(234, 67, 53, 1),
            textColor: Colors.white,
            width: 335,
            height: 50),
      ],
    );
  }
}
