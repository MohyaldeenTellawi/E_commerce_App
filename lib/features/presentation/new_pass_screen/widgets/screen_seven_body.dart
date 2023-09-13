import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';

import '../../signUp_Screen/widgets/custom_text.dart';
import '../../signUp_Screen/widgets/custom_text_field.dart';

class NewPasswordScreenBody extends StatelessWidget {
  const NewPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
          title: 'New Password',
          icon: CupertinoIcons.arrow_left_circle_fill,
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const SizedBox(
          height: 180,
        ),
        const TextfieldNewPassSection(),
        const SizedBox(
          height: 230,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please write your new password.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(
          height: 79,
        ),
        CustomConfirmButton(
            textButton: 'Reset Password',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kLogInScreenView);
            })
      ],
    );
  }
}

class TextfieldNewPassSection extends StatelessWidget {
  const TextfieldNewPassSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(labelText: 'Password'),
        CustomTextField(
          obscure: true,
        ),
        SizedBox(height: 20),
        CustomText(labelText: 'Confirm Password'),
        CustomTextField(
          obscure: true,
        ),
      ],
    );
  }
}
