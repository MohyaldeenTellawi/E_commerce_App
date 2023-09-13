import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';

import 'details_card_bank.dart';

class AddNewCardButton extends StatelessWidget {
  const AddNewCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(151, 117, 250, 1),
          ),
          color: const Color.fromRGBO(246, 242, 255, 1)),
      child: TextButton.icon(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kAddNewCardScreenView);
          },
          icon: const Icon(FontAwesomeIcons.squarePlus),
          label: const DetailsText(
            text: 'Add new card',
            fontSize: 17,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
