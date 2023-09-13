import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar(
      {super.key,
      this.title,
      required this.leadingOnPressed,
      required this.actionOnPressed});

  final String? title;
  final void Function() leadingOnPressed;
  final void Function() actionOnPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        title ?? '',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          CupertinoIcons.square_list_fill,
          color: Colors.grey,
          size: 40,
        ),
        onPressed: leadingOnPressed,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: IconButton(
            icon: const Icon(
              CupertinoIcons.cart_badge_minus,
              color: Colors.grey,
              size: 40,
            ),
            onPressed: actionOnPressed,
          ),
        ),
      ],
    );
  }
}
