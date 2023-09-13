import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/custom_home_app_bar.dart';
import '../../auth_screen/widgets/custom_title.dart';
import 'custom_brand_list_item.dart';
import 'custom_row.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHomeAppBar(
          leadingOnPressed: () => openDrawe,
          actionOnPressed: () =>
              GoRouter.of(context).push(AppRouter.kCartScreenView),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: CustomTitle(
            title: 'Hello',
            alignment: Alignment.centerLeft,
          ),
        ),
        const SizedBox(height: 5),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Welcome to Laza.',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: 275,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.text,
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                      onPressed: () {},
                    ),
                    hintText: 'Search...',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 13),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: iconColor,
              ),
              child: IconButton(
                icon: const Icon(FontAwesomeIcons.microphone),
                onPressed: () {},
              ),
            ),
          ],
        ),
        const CustomRow(title: 'Choose Brand', textButton: 'View All'),
        const CustomBrandItemList(),
        const CustomRow(title: 'New Arraival', textButton: 'View All'),
      ],
    );
  }
}

void openDrawe() {
  GlobalKey<ScaffoldState>().currentState?.openDrawer();
}
