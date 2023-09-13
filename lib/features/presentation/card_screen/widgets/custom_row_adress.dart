import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';

class CustomRowAdress extends StatelessWidget {
  const CustomRowAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          location,
          width: 50,
          height: 50,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chhatak, Sunamgonj 12/8AB',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              'Sylhet',
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
              padding: const EdgeInsets.only(left: 40),
              child: Image.asset(check),
            )
          ],
        )
      ],
    );
  }
}
