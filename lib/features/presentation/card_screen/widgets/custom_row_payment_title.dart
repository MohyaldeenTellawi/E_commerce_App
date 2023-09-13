import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';

class CustomRowPaymentTitle extends StatelessWidget {
  const CustomRowPaymentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomTitle(
          title: 'Payment Method',
        ),
        CustomIconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kPaymentScreenView);
          },
        )
      ],
    );
  }
}

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed, icon: const Icon(CupertinoIcons.arrow_right));
  }
}
