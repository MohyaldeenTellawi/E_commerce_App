import 'package:flutter/material.dart';

class TextfieldAdress extends StatelessWidget {
  const TextfieldAdress(
      {super.key,
      required this.width,
      required this.height,
      required this.hintText,
      required this.keyboardType});

  final double width;
  final double height;
  final String hintText;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(245, 246, 250, 1),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: width,
      height: height,
      child: TextFormField(
        keyboardType: keyboardType,
        onTapOutside: (_) {
          FocusScope.of(context).unfocus();
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(143, 149, 158, 1),
              fontSize: 15,
              fontWeight: FontWeight.w400),
          contentPadding: const EdgeInsets.all(8),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
