import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';

import 'text_field_section.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
            title: 'Sign Up',
            icon: CupertinoIcons.arrow_left_circle_fill,
            onPressed: () =>
                GoRouter.of(context).push(AppRouter.kauthScreenView)),
        const SizedBox(height: 160),
        const TextFieldSection(),
        const SizedBox(height: 190.5),
        CustomConfirmButton(
          textButton: 'Sign UP',
          onPressed: () {},
        )
      ],
    );
  }
}
