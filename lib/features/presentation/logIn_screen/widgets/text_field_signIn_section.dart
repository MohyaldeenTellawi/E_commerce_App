import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:lazaapp/core/widgets/custom_ios_switch.dart';
import '../../../../core/utils/app_router.dart';
import '../../signUp_Screen/widgets/custom_text.dart';
import '../../signUp_Screen/widgets/custom_text_field.dart';

class TextFieldSignInSection extends StatelessWidget {
  const TextFieldSignInSection({super.key});

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
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.only(left: 228, right: 20),
          child: TextButton(
            child: const Text(
              'Forgot password?',
              style: TextStyle(
                  color: Color.fromRGBO(234, 67, 53, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kForgetPasswordScreenView);
            },
          ),
        ),
        const SizedBox(height: 42),
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
                child: CustomIosSwitch(onChanged: (_) {}, value: true))
          ],
        ),
      ],
    );
  }
}
