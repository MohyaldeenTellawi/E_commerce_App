import 'package:flutter/material.dart';

import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';

import '../../reviews_screen/widgets/custom_row.dart';

import 'custom_review_item_list.dart';

class ReviewsScreenBody extends StatelessWidget {
  const ReviewsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomReturnAppBar(
          title: 'Reviews',
        ),
        SizedBox(height: 20),
        CustomRow(),
        SizedBox(height: 10),
        CustomReviewItemList()
      ],
    );
  }
}
