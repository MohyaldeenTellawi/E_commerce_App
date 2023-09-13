import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/features/presentation/forget_pass_screen/widgets/text_field_forget_section.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/custom_return_app_bar.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
          title: 'Forgot Password',
          icon: CupertinoIcons.arrow_left_circle_fill,
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const SizedBox(height: 75),
        Image.asset(forgetPass),
        const TextFieldForgetSection(),
        const SizedBox(height: 150),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please write your email to receive a\n confirmation code to set a new password.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 102),
        CustomConfirmButton(
            textButton: 'Confirm Mail',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kVerfiCodeScreenView);
            })
      ],
    );
  }
}
