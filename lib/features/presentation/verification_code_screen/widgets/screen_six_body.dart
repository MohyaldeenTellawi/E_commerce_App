import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/custom_return_app_bar.dart';

import 'verification_code_section.dart';

class VerfiCodeScreenBody extends StatelessWidget {
  const VerfiCodeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
          title: 'Verification Code',
          icon: CupertinoIcons.arrow_left_circle_fill,
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const SizedBox(height: 50),
        Image.asset(forgetPass),
        const SizedBox(height: 50),
        const VerificationCodeSection(),
        const SizedBox(height: 150),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '00:20',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 5),
            Text(
              'resend confirmation code.',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            ),
          ],
        ),
        const SizedBox(height: 90),
        CustomConfirmButton(
            textButton: 'Confirm Code',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kNewPasswordScreenView);
            })
      ],
    );
  }
}
