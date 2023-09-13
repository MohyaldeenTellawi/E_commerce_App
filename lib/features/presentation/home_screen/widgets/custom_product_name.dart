import 'package:flutter/material.dart';

class CustomProductName extends StatelessWidget {
  const CustomProductName({super.key, required this.productName});

  final String productName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        productName,
        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
      ),
    );
  }
}
