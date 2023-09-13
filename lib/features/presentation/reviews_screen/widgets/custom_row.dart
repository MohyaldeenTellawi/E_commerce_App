import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/custom_button.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                '245 Reviews',
                style: TextStyle(fontSize: 15),
              ),
              Row(
                children: [const Text('4.8'), Image.asset(rating)],
              )
            ],
          ),
          CustomElevatedButton(
              textButton: 'Add Review',
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kAddReviewScreenView);
              },
              backgroundColor: const Color(0xffFF7043),
              textColor: Colors.white,
              width: 150,
              logoName: edit,
              height: 50,
              imageWidth: 15,
              imageHeight: 15)
        ],
      ),
    );
  }
}
