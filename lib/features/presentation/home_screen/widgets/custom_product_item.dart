import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_product_name.dart';
import 'custom_product_price.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem(
      {super.key,
      required this.product,
      required this.productName,
      required this.productPrice});

  final String product;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Container(
                  width: 160,
                  height: 203,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(245, 246, 250, 1),
                      image: DecorationImage(image: AssetImage(product))),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 115,
                    right: 20,
                  ),
                  width: 20,
                  height: 20,
                  child: IconButton(
                    iconSize: 20,
                    icon: const Icon(FontAwesomeIcons.heart),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
        CustomProductName(productName: productName),
        const SizedBox(height: 3),
        CustomProductPrice(
          productPrice: productPrice,
        )
      ],
    );
  }
}
