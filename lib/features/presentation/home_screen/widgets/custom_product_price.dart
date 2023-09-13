import 'package:flutter/material.dart';

class CustomProductPrice extends StatelessWidget {
  const CustomProductPrice({super.key, required this.productPrice});

  final String productPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Text(
            '€',
            style: TextStyle(fontSize: 13),
          ),
          const SizedBox(width: 5),
          Text(
            productPrice,
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
