import 'package:flutter/material.dart';

import '../widget/add_review_body.dart';

class AddReviewScreenView extends StatelessWidget {
  const AddReviewScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: AddreviewBody()),
    );
  }
}
