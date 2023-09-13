import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';

class CardTypeItem extends StatelessWidget {
  const CardTypeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFEEE3),
            image: DecorationImage(
              image: AssetImage(master),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF5F6FA),
            image: DecorationImage(
              image: AssetImage(paypal),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF5F6FA),
            image: DecorationImage(
              image: AssetImage(pay),
            ),
          ),
        ),
      ],
    );
  }
}
