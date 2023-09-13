import 'package:flutter/material.dart';
import 'package:lazaapp/features/presentation/payment_screen/widgets/card_bank_item.dart';

class CardBankListView extends StatelessWidget {
  const CardBankListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(5),
              child: CardBankItem(),
            );
          }),
    );
  }
}
