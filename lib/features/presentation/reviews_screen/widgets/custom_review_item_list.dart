import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';
import 'package:lazaapp/features/presentation/reviews_screen/widgets/custom_review_item.dart';

class CustomReviewItemList extends StatefulWidget {
  const CustomReviewItemList({super.key});

  @override
  State<CustomReviewItemList> createState() => _CustomReviewItemListState();
}

class _CustomReviewItemListState extends State<CustomReviewItemList> {
  List<String> avatar = [avatar1, avatar2, avatar3, avatar4];
  List<String> clientName = [
    'Jenny Wilson',
    'Ronald Richards',
    'Guy Hawkins',
    'Savannah Nguyen',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomReviewItem(
              avatar: avatar[index],
              clientName: clientName[index],
            ),
          );
        });
  }
}
