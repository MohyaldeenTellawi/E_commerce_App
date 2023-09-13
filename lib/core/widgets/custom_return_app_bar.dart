import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomReturnAppBar extends StatelessWidget {
  const CustomReturnAppBar(
      {super.key, required this.title, this.onPressed, this.icon});

  final String title;
  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          icon,
          color: Colors.grey,
          size: 40,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
