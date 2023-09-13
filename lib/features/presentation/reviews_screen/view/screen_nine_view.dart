import 'package:flutter/material.dart';
import '../widgets/screen_nine_body.dart';

class ReviewsScreenView extends StatelessWidget {
  const ReviewsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: ReviewsScreenBody()),
    );
  }
}
