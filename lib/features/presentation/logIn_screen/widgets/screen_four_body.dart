import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';

import 'package:lazaapp/features/presentation/signUp_Screen/widgets/custom_text.dart';
import 'package:lazaapp/features/presentation/logIn_screen/widgets/text_field_signIn_section.dart';

class LogInScreenBody extends StatelessWidget {
  const LogInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
          title: 'Welcome',
          icon: CupertinoIcons.arrow_left_circle_fill,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kauthScreenView);
          },
        ),
        const CustomText(labelText: 'Please enter your data to continue'),
        const SizedBox(height: 100),
        const TextFieldSignInSection(),
        const SizedBox(
          height: 110,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By connecting your account confirm that you agree\n with our Term and Condition',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
        const SizedBox(height: 100),
        CustomConfirmButton(
            textButton: 'Log In',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kmainScreenView);
            })
      ],
    );
  }
}
