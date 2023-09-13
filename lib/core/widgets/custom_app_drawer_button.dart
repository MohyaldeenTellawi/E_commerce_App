// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';

class CustomAppDrawerButton extends StatelessWidget {
  const CustomAppDrawerButton(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.iconName,
      this.textColor,
      this.fontWeight,
      this.iconColor})
      : super(key: key);

  final void Function() onPressed;
  final IconData icon;
  final String iconName;
  final Color? iconColor;
  final Color? textColor;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton.icon(
            style: ButtonStyle(
                overlayColor: MaterialStatePropertyAll(drawerColor)),
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: iconColor ?? const Color.fromRGBO(29, 30, 32, 1),
            ),
            label: Text(
              iconName,
              style: TextStyle(
                  color: textColor ?? const Color.fromRGBO(29, 30, 32, 1),
                  fontSize: 15,
                  fontWeight: fontWeight ?? FontWeight.w400),
            )),
      ],
    );
  }
}
