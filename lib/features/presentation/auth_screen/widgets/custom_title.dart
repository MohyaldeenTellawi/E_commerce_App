import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.title, this.alignment});
  final AlignmentGeometry? alignment;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
      ),
    );
  }
}
