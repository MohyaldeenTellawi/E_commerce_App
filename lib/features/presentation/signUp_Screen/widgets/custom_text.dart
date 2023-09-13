import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        labelText,
        style: const TextStyle(
            color: Color.fromRGBO(143, 149, 158, 1),
            fontSize: 13,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
