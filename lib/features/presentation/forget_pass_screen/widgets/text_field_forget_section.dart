import 'package:flutter/material.dart';

import '../../signUp_Screen/widgets/custom_text.dart';
import '../../signUp_Screen/widgets/custom_text_field.dart';

class TextFieldForgetSection extends StatelessWidget {
  const TextFieldForgetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(labelText: 'Email Address'),
        CustomTextField(
          obscure: false,
        ),
      ],
    );
  }
}
