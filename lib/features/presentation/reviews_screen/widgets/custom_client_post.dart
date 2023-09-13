import 'package:flutter/material.dart';

class CustomClientPost extends StatelessWidget {
  const CustomClientPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
        maxLines: 3,
        style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15),
      ),
    );
  }
}
