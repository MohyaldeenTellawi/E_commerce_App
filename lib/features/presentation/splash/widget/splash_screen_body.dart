import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/app_router.dart';

import '../../../../core/utils/constant.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    goToScreenOne();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, -2), end: Offset.zero)
            .animate(animationController);
    animationController.fling();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void goToScreenOne() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kStartScreenView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Center(
            child: Container(
              width: 59,
              height: 36,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(logoImage),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
