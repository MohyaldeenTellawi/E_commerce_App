import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';

class BackgroundCardBank extends StatelessWidget {
  const BackgroundCardBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(vector1))),
      width: 300,
      height: 185,
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          width: 300,
          height: 134,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: AssetImage(vector2))),
        ),
        Container(
          margin: const EdgeInsets.only(left: 55),
          width: 245,
          height: 185,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: AssetImage(vector3))),
        ),
      ]),
    );
  }
}
