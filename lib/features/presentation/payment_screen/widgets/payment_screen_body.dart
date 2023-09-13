import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';

import 'package:lazaapp/features/presentation/payment_screen/widgets/card_bank_list_view.dart';

import 'add_new_card_button.dart';
import 'new_card_section.dart';

class PaymentScreenBody extends StatelessWidget {
  const PaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
            title: 'Payment',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kHomeScreenView);
            }),
        const SizedBox(height: 20),
        const CardBankListView(),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AddNewCardButton(),
          ],
        ),
        const AddNewCardSection(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleNewCardBank(
              title: 'Save card info',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CupertinoSwitch(
                dragStartBehavior: DragStartBehavior.down,
                value: true,
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        CustomConfirmButton(
            height: MediaQuery.of(context).size.height * 0.100,
            textButton: 'Save Card',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kCartScreenView);
            })
      ],
    );
  }
}
