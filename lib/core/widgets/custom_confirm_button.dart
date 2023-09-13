import 'package:flutter/material.dart';

class CustomConfirmButton extends StatelessWidget {
  const CustomConfirmButton(
      {super.key,
      required this.textButton,
      required this.onPressed,
      this.height});

  final String textButton;
  final double? height;

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.001),
      width: double.infinity,
      height: height ?? MediaQuery.of(context).size.height * 0.099,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(151, 117, 250, 1),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            textButton,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
