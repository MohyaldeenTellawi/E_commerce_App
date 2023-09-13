import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.avatar});

  final String avatar;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: Image.asset(
        avatar,
        width: 40,
        height: 40,
      ),
    );
  }
}
