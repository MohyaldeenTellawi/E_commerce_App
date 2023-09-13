import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/utils/constant.dart';
import 'package:lazaapp/core/widgets/custom_ios_switch.dart';

import 'custom_app_drawer_button.dart';

class CustomAppDrawe extends StatelessWidget {
  const CustomAppDrawe({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .8,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          Row(
            children: [
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 45,
                height: 45,
                child: CircleAvatar(
                  backgroundImage: AssetImage(drawer),
                ),
              ),
              const Column(
                children: [
                  Text(
                    'Mrh Raju',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Verified Profile',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Container(
                width: 66,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  child: const Text(
                    '3 orders',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(143, 149, 158, 1),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(sun),
              const Text(
                'Dark Mode',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              CustomIosSwitch(onChanged: (_) {}, value: false)
            ],
          ),
          const SizedBox(height: 25),
          CustomAppDrawerButton(
            icon: Icons.info_outline,
            iconName: 'Account Information',
            onPressed: () {},
          ),
          CustomAppDrawerButton(
            icon: Icons.lock_outline_rounded,
            iconName: 'Password',
            onPressed: () {},
          ),
          CustomAppDrawerButton(
            icon: Icons.badge_outlined,
            iconName: 'Orders',
            onPressed: () {},
          ),
          CustomAppDrawerButton(
            icon: Icons.card_travel_sharp,
            iconName: 'My Card',
            onPressed: () {},
          ),
          CustomAppDrawerButton(
            icon: Icons.favorite_outline,
            iconName: 'Wishlist',
            onPressed: () {},
          ),
          CustomAppDrawerButton(
            icon: Icons.settings_outlined,
            iconName: 'Settings',
            onPressed: () {},
          ),
          const SizedBox(height: 50),
          CustomAppDrawerButton(
            icon: Icons.logout_outlined,
            iconName: 'Logout',
            iconColor: const Color.fromRGBO(255, 87, 87, 1),
            textColor: const Color.fromRGBO(255, 87, 87, 1),
            fontWeight: FontWeight.w500,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kauthScreenView);
            },
          ),
        ],
      ),
    );
  }
}
