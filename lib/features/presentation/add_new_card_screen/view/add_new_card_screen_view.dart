import 'package:flutter/material.dart';

import '../widgets/add_new_card_body.dart';

class AddNewCardScreenView extends StatelessWidget {
  const AddNewCardScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: AddNewCardBody()),
    );
  }
}
