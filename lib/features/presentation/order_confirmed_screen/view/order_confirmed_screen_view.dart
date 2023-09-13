import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazaapp/core/utils/constant.dart';
import 'package:lazaapp/core/utils/app_router.dart';
import 'package:lazaapp/core/widgets/custom_confirm_button.dart';
import 'package:lazaapp/core/widgets/custom_return_app_bar.dart';

class OrderConfirmedScreenView extends StatelessWidget {
  const OrderConfirmedScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderConfirmedBody(),
    );
  }
}

class OrderConfirmedBody extends StatelessWidget {
  const OrderConfirmedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReturnAppBar(title: '', onPressed: () {}),
        const OrderConfirmedImage(),
        const SizedBox(height: 30),
        const CustomText(
            text: 'Order Confirmed!',
            textColor: Color.fromRGBO(29, 30, 32, 1),
            fontWeight: FontWeight.w600,
            fontSize: 26),
        const SizedBox(height: 15),
        const CustomText(
            textAlign: TextAlign.center,
            text:
                'Your order has been confirmed, we will send you confirmation email shortly.',
            textColor: Color.fromRGBO(143, 149, 158, 1),
            fontWeight: FontWeight.w400,
            fontSize: 15),
        const SizedBox(height: 50),
        const CustomTextButton(),
        const SizedBox(height: 89.7),
        CustomConfirmButton(
          textButton: 'Continue Shopping',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kHomeScreenView);
          },
          height: MediaQuery.of(context).size.height * 0.100,
        )
      ],
    );
  }
}

class OrderConfirmedImage extends StatelessWidget {
  const OrderConfirmedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650,
      height: 350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            orderconfirm,
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.textColor,
      required this.fontWeight,
      required this.fontSize,
      this.textAlign});

  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 245, 245, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        child: const CustomText(
          text: 'Go to Orders',
          fontSize: 17,
          fontWeight: FontWeight.w500,
          textColor: Color.fromRGBO(143, 149, 158, 1),
        ),
        onPressed: () {},
      ),
    );
  }
}
