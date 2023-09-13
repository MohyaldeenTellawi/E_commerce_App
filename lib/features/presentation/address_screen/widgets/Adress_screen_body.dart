import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';
import 'text_from_field_adress.dart';
import 'title_adress.dart';

class AdressScreenBody extends StatelessWidget {
  const AdressScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomReturnAppBar(
            title: 'Address',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kCartScreenView);
            }),
        const SizedBox(height: 40),
        const TitleAdress(
          title: 'Name',
        ),
        const SizedBox(height: 5),
        const TextfieldAdress(
          hintText: 'Mohyaldeen Tellawi',
          width: 335,
          height: 50,
          keyboardType: TextInputType.name,
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAdress(
                  title: 'Country',
                ),
                SizedBox(height: 5),
                TextfieldAdress(
                    width: 160,
                    height: 50,
                    hintText: 'Turkey',
                    keyboardType: TextInputType.text),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAdress(
                  title: 'City',
                ),
                SizedBox(height: 5),
                TextfieldAdress(
                    width: 160,
                    height: 50,
                    hintText: 'Istanbul',
                    keyboardType: TextInputType.text),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        const TitleAdress(
          title: 'Phone Number',
        ),
        const SizedBox(height: 5),
        const TextfieldAdress(
          hintText: '+880 1453-987533',
          width: 335,
          height: 50,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 20),
        const TitleAdress(
          title: 'Address',
        ),
        const SizedBox(height: 5),
        const TextfieldAdress(
          hintText: 'Derviş Ali Mah. No 3 D 3 Fatih',
          width: 335,
          height: 50,
          keyboardType: TextInputType.name,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleAdress(
              title: 'Save as primary address',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CupertinoSwitch(
                dragStartBehavior: DragStartBehavior.down,
                value: true,
                onChanged: (_) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 190),
        CustomConfirmButton(
          textButton: 'Save Address',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kCartScreenView);
          },
        ),
      ],
    );
  }
}
