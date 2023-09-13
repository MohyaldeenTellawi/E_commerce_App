import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lazaapp/core/widgets/custom_ios_switch.dart';

import 'custom_text.dart';
import 'custom_text_field.dart';

class TextFieldSection extends StatelessWidget {
  const TextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(labelText: 'UserName'),
        const CustomTextField(
          obscure: false,
        ),
        const SizedBox(height: 10),
        const CustomText(labelText: 'Password'),
        const CustomTextField(
          obscure: true,
        ),
        const SizedBox(height: 10),
        const CustomText(labelText: 'Email Address'),
        const CustomTextField(
          obscure: false,
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Remember me',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 20),
                child: CustomIosSwitch(onChanged: (_) {}, value: true)),
          ],
        ),
      ],
    );
  }
}
