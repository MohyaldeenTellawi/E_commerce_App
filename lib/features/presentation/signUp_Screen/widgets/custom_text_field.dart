import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.obscure});

  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscure,
        onTapOutside: (_) {
          FocusScope.of(context).unfocus();
        },
        decoration: const InputDecoration(),
      ),
    );
  }
}
