import 'package:flutter/material.dart';

import 'package:lazaapp/features/presentation/home_screen/widgets/custom_product_list_item.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [CustomProductItemList()],
    );
  }
}
