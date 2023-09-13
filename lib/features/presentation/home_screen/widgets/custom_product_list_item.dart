import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';
import 'package:lazaapp/features/presentation/home_screen/widgets/custom_product_item.dart';

class CustomProductItemList extends StatefulWidget {
  const CustomProductItemList({super.key});

  @override
  State<CustomProductItemList> createState() => _CustomProductItemListState();
}

class _CustomProductItemListState extends State<CustomProductItemList> {
  List<String> product = [prod1, prod2, prod3, prod4, prod1, prod3];
  List<String> productName = [
    'Nike Sportswear Club Fleece',
    'Trail Running Jacket Nike Wanderer',
    'Nike Sportswear Club Fleece',
    'Trail Running Jacket Nike Wanderer',
    'Nike Sportswear Club Fleece',
    'Trail Running Jacket Nike Wanderer',
  ];
  List<String> price = ['19.99', '25.34', '47.2', '64.3', '20.2', '33.54'];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return CustomProductItem(
            productPrice: price[index],
            product: product[index],
            productName: productName[index],
          );
        });
  }
}
