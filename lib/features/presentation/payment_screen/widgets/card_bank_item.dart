import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/features/presentation/payment_screen/widgets/background_cart_bank.dart';
import 'package:lazaapp/features/presentation/payment_screen/widgets/details_card_bank.dart';

class CardBankItem extends StatelessWidget {
  const CardBankItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showAdaptiveDialog(
            context: context,
            builder: (context) {
              return AlertDialog.adaptive(
                content: const Text(
                  'Are you sure to choose this credit card?',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                actions: [
                  CupertinoButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        GoRouter.of(context).pop();
                      }),
                  CupertinoButton(
                      child: const Text('Ok'),
                      onPressed: () {
                        GoRouter.of(context).pop();
                      }),
                ],
              );
            });
      },
      child: const Stack(
        children: [BackgroundCardBank(), DetailsCardBank()],
      ),
    );
  }
}
