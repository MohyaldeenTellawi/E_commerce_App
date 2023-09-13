import 'package:flutter/material.dart';
import 'package:lazaapp/features/presentation/card_screen/view/cart_screen_view.dart';
import 'package:lazaapp/features/presentation/home_screen/view/screen_eight_view.dart';
import 'package:lazaapp/features/presentation/home_screen/widgets/custom_bottom_nav_bar.dart';
import 'package:lazaapp/features/presentation/payment_screen/view/payment_screen_view.dart';
import 'package:lazaapp/features/presentation/reviews_screen/view/screen_nine_view.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  final screens = [
    const HomeScreenView(),
    const ReviewsScreenView(),
    const CartScreenView(),
    const PaymentScreenView()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
            children: screens
                .asMap()
                .map((index, screen) => MapEntry(
                    index,
                    Offstage(
                      offstage: selectedIndex != index,
                      child: screen,
                    )))
                .values
                .toList()),
        bottomNavigationBar: CustomBottomNavBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            }),
      ),
    );
  }
}
