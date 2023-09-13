import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.title, required this.textButton});

  final String title;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: TextButton(
            onPressed: () {},
            child: Text(
              textButton,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
