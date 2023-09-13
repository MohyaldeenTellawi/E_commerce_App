import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';

class DetailsCardBank extends StatelessWidget {
  const DetailsCardBank({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 185,
      child: Column(
        children: [
          SizedBox(height: 20),
          Row1(),
          SizedBox(height: 40),
          Row2(),
          SizedBox(height: 10),
          Row3(),
          SizedBox(height: 17),
          Row4(),
        ],
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: DetailsText(
            text: 'Mohyaldeen Tellawi',
            fontSize: 17,
            fontWeight: FontWeight.w600,
            textColor: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Image.asset(
            visaf,
            width: 30,
            height: 30,
          ),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: DetailsText(
            text: 'Visa Classic',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  const Row3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: DetailsText(
            text: '5254 **** **** 7690',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class Row4 extends StatelessWidget {
  const Row4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: DetailsText(
            text: '€ 3,763.87',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class DetailsText extends StatelessWidget {
  const DetailsText(
      {super.key,
      required this.text,
      this.textColor,
      required this.fontSize,
      required this.fontWeight});

  final String text;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: textColor),
      ),
    );
  }
}
