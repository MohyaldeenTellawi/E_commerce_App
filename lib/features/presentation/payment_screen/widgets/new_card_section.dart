import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewCardSection extends StatelessWidget {
  const AddNewCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        TitleNewCardBank(
          title: 'Card Owner',
        ),
        SizedBox(height: 10),
        TextfieldNewCard(
          width: 335,
          height: 50,
          hintText: 'Mohyaldeen Tellawi',
          keyboardType: TextInputType.name,
        ),
        SizedBox(height: 15),
        TitleNewCardBank(
          title: 'Card Number',
        ),
        SizedBox(height: 10),
        TextfieldNewCard(
          width: 335,
          height: 50,
          hintText: '5254 7634 8734 7690',
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleNewCardBank(
                  title: 'EXP',
                ),
                SizedBox(height: 10),
                TextfieldNewCard(
                  width: 160,
                  height: 50,
                  hintText: '24/24',
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleNewCardBank(
                  title: 'CVV',
                ),
                SizedBox(height: 10),
                TextfieldNewCard(
                  width: 160,
                  height: 50,
                  hintText: '7763',
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class TitleNewCardBank extends StatelessWidget {
  const TitleNewCardBank({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class TextfieldNewCard extends StatelessWidget {
  const TextfieldNewCard(
      {super.key,
      required this.width,
      required this.height,
      required this.hintText,
      required this.keyboardType});

  final double width;
  final double height;
  final String hintText;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(245, 246, 250, 1),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: width,
      height: height,
      child: TextFormField(
        keyboardType: keyboardType,
        onTapOutside: (_) {
          FocusScope.of(context).unfocus();
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(143, 149, 158, 1),
              fontSize: 15,
              fontWeight: FontWeight.w400),
          contentPadding: const EdgeInsets.all(8),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
