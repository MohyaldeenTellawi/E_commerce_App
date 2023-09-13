import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.width,
    required this.height,
    this.logoName,
    required this.imageWidth,
    required this.imageHeight,
  });
  final Color backgroundColor;
  final String textButton;
  final Color textColor;
  final double width;
  final double height;
  final double imageWidth;
  final double imageHeight;
  final String? logoName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logoName!,
              width: imageWidth,
              height: imageHeight,
            ),
            const SizedBox(width: 4),
            Text(
              textButton,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.textButton,
      required this.textColor,
      this.onPressed});

  final String textButton;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36,
      child: TextButton(
        style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Colors.grey.withOpacity(0.1))),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
