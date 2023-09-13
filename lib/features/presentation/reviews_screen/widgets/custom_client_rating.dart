import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';

class CustomClientRating extends StatelessWidget {
  const CustomClientRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 110),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                '4.8',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                'rating',
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Image.asset(
            rating,
            width: 57,
            height: 13,
          ),
        ],
      ),
    );
  }
}
