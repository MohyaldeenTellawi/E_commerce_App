import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../auth_screen/widgets/custom_title.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromRGBO(245, 246, 250, 1)),
      width: 335,
      height: 150,
      child: const Row(
        children: [Column1(), Column2(), Column3()],
      ),
    );
  }
}

class Column1 extends StatelessWidget {
  const Column1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(prod2))),
      width: 100,
      height: 100,
    );
  }
}

class Column2 extends StatelessWidget {
  const Column2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CustomTitle(
          title: 'Men\s Tie-Dye T-Shirt\n Nike Sportswear',
        ),
        const SizedBox(height: 12),
        const Text(
          '€45 (-€4.00 Tax)',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 22),
        Row(children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.arrow_down_circle)),
          const SizedBox(width: 10),
          const Text('1'),
          const SizedBox(width: 10),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.arrow_up_circle)),
        ])
      ]),
    );
  }
}

class Column3 extends StatelessWidget {
  const Column3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 95, bottom: 2, right: 1, left: 50),
      child: IconButton(
        icon: const Icon(
          CupertinoIcons.delete_solid,
        ),
        onPressed: () {},
      ),
    );
  }
}
