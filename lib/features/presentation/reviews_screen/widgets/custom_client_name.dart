import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';

class CustomClientName extends StatelessWidget {
  const CustomClientName({super.key, required this.clientName});

  final String clientName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          clientName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Image.asset(
              clock,
              width: 15,
              height: 15,
            ),
            const SizedBox(width: 5),
            const Text(
              '13 Sep, 2020',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
