import 'package:flutter/material.dart';

class CustomOrderInfo extends StatelessWidget {
  const CustomOrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Order Info',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 10),
        CustomOrderInfoRow(
          title: 'Subtotal',
          price: '€110',
        ),
        SizedBox(height: 5),
        CustomOrderInfoRow(
          title: 'Shipping cost',
          price: '€10',
        ),
        SizedBox(height: 5),
        CustomOrderInfoRow(
          title: 'Total',
          price: '€120',
        ),
      ],
    );
  }
}

class CustomOrderInfoRow extends StatelessWidget {
  const CustomOrderInfoRow(
      {super.key, required this.title, required this.price});

  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            price,
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
