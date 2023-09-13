import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';

class CustomRowPayment extends StatelessWidget {
  const CustomRowPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          visa,
          width: 50,
          height: 50,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Visa Classic',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              '**** 7690',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Image.asset(check),
            )
          ],
        )
      ],
    );
  }
}
