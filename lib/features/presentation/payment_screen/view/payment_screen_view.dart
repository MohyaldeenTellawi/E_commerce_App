import 'package:flutter/material.dart';

import '../widgets/payment_screen_body.dart';

class PaymentScreenView extends StatelessWidget {
  const PaymentScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: PaymentScreenBody()),
    );
  }
}
