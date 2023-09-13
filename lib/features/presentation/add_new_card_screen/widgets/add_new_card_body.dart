import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';

import 'add_new_card_field_section.dart';
import 'card_type_item.dart';

class AddNewCardBody extends StatelessWidget {
  const AddNewCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
            title: 'Add New Card',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kPaymentScreenView);
            }),
        const SizedBox(height: 30),
        const CardTypeItem(),
        const SizedBox(height: 15),
        const AddNewCardFieldSection(),
        const SizedBox(height: 246.5),
        CustomConfirmButton(
          textButton: 'Add Card',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kPaymentScreenView);
          },
          height: MediaQuery.of(context).size.height * 0.100,
        )
      ],
    );
  }
}
