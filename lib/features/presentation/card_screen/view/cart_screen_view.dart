import 'package:flutter/material.dart';

import '../widgets/cart_screen_body.dart';

class CartScreenView extends StatelessWidget {
  const CartScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: CartScreenBody()),
    );
  }
}
