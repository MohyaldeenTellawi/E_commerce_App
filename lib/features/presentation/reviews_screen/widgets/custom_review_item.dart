import 'package:flutter/material.dart';

import 'custom_avatar.dart';
import 'custom_client_name.dart';
import 'custom_client_post.dart';
import 'custom_client_rating.dart';

class CustomReviewItem extends StatelessWidget {
  const CustomReviewItem(
      {super.key, required this.avatar, required this.clientName});

  final String avatar;
  final String clientName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Avatar(avatar: avatar),
              const SizedBox(width: 5),
              CustomClientName(clientName: clientName),
              const CustomClientRating(),
            ],
          ),
        ),
        const SizedBox(height: 13),
        const CustomClientPost()
      ],
    );
  }
}
