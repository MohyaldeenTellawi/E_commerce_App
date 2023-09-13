import 'package:flutter/material.dart';
import 'package:lazaapp/core/utils/constant.dart';
import 'package:lazaapp/core/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Laza E-Commerce App',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: iconColor)),
      routerConfig: AppRouter.router,
    );
  }
}
