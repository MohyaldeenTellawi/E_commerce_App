import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';
import 'package:lazaapp/features/presentation/home_screen/widgets/custom_brand_item.dart';

class CustomBrandItemList extends StatefulWidget {
  const CustomBrandItemList({super.key});

  @override
  State<CustomBrandItemList> createState() => _CustomBrandItemListState();
}

class _CustomBrandItemListState extends State<CustomBrandItemList> {
  List<String> brandImage = [adidas, nike, fila, puma, zara, north];

  List<String> brandText = [
    'Adidas',
    'Nike',
    'Fila',
    'Puma',
    'Zara',
    'North Face',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return CustomBrandItem(
                brandImage: brandImage[index], brandText: brandText[index]);
          }),
    );
  }
}
