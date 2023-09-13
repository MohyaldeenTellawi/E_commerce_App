import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/features/presentation/card_screen/widgets/custom_row_title.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/custom_return_app_bar.dart';
import 'cart_product_item.dart';
import 'custom_order_info.dart';
import 'custom_row_adress.dart';
import 'custom_row_payment_title.dart';
import 'custom_row_paymet.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomReturnAppBar(
          title: 'Card',
          onPressed: () =>
              GoRouter.of(context).push(AppRouter.kmainScreenView)),
      const CartProductItem(),
      const CartProductItem(),
      const CustomRowAdressTitle(),
      const CustomRowAdress(),
      const SizedBox(height: 5),
      const CustomRowPaymentTitle(),
      const CustomRowPayment(),
      const SizedBox(height: 15),
      const CustomOrderInfo(),
      const SizedBox(height: 30),
      CustomConfirmButton(
          height: MediaQuery.of(context).size.height * 0.100,
          textButton: 'Checkout',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kOrderConfirmedScreenView);
          })
    ]);
  }
}
