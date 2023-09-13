import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';

import 'button_section.dart';
import '../../../../core/widgets/custom_return_app_bar.dart';

class ScreenTwoBody extends StatelessWidget {
  const ScreenTwoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
          title: 'Let\'s Get Started',
          onPressed: () =>
              GoRouter.of(context).push(AppRouter.kStartScreenView),
        ),
        const SizedBox(height: 150),
        const ButtonSection(),
        const SizedBox(height: 150),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account?',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kLogInScreenView);
              },
              child: const Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        const SizedBox(height: 134.5),
        CustomConfirmButton(
          textButton: 'Creat a new account',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSignupScreenView);
          },
        )
      ],
    );
  }
}
