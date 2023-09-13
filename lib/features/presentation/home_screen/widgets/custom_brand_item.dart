import 'package:flutter/material.dart';

class CustomBrandItem extends StatelessWidget {
  const CustomBrandItem(
      {super.key, required this.brandImage, required this.brandText});

  final String brandImage;
  final String brandText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 1),
        width: 170,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(245, 246, 250, 1)),
        child: Row(
          children: [
            Image.asset(brandImage),
            const SizedBox(width: 18),
            Text(
              brandText,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
