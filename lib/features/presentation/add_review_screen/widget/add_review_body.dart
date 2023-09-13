import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/features/presentation/auth_screen/widgets/custom_title.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/custom_confirm_button.dart';
import '../../../../core/widgets/custom_return_app_bar.dart';

class AddreviewBody extends StatelessWidget {
  const AddreviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(
          title: 'Add Review',
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const SizedBox(height: 40),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            CustomTitle(title: 'Name'),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 335,
          height: 50,
          child: TextFormField(
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
                hintText: 'Type your name ...',
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Text(
              'How was your experience ?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: 335,
          height: 213,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 246, 250, 1),
              shape: BoxShape.rectangle),
          child: TextFormField(
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: InputBorder.none,
                hintText: '   Describe your experience'),
          ),
        ),
        const SizedBox(height: 60),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Text(
              'Star',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('0.0'),
            Slider(
              value: 2.5,
              onChanged: (_) {},
              min: 0,
              max: 5,
            ),
            const Text('5.0'),
          ],
        ),
        const SizedBox(height: 145),
        CustomConfirmButton(
            textButton: 'Submit Review',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kReviewsScreenView);
            })
      ],
    );
  }
}
