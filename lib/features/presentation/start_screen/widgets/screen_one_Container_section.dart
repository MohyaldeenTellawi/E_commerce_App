import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/constant.dart';
import 'package:lazaapp/core/utils/app_router.dart';

import '../../../../core/widgets/custom_button.dart';

class ContainerSection extends StatelessWidget {
  const ContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 270,
      margin: const EdgeInsets.only(top: 552, bottom: 20, right: 15, left: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 42, right: 42),
            child: Row(
              children: [
                Text(
                  'Look Good, Feel Good',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 25, right: 26),
            child: Row(
              children: [
                Text(
                  'Create your individual & unique style and\n look amazing everyday.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25, right: 26),
            child: Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                      logoName: emptyImage,
                      imageWidth: 0,
                      imageHeight: 0,
                      width: 152,
                      height: 60,
                      textButton: 'Men',
                      textColor: Colors.grey,
                      onPressed: () {},
                      backgroundColor: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomElevatedButton(
                      logoName: emptyImage,
                      imageWidth: 0,
                      imageHeight: 0,
                      width: 152,
                      height: 60,
                      textButton: 'Women',
                      textColor: Colors.white,
                      onPressed: () {},
                      backgroundColor: const Color(0xff9775FA)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20, right: 145, left: 145, bottom: 20),
            child: Row(
              children: [
                Expanded(
                    child: CustomTextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kauthScreenView);
                        },
                        textButton: 'Skip',
                        textColor: Colors.grey)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
