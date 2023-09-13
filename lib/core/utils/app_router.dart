import 'package:go_router/go_router.dart';
import 'package:lazaapp/features/presentation/add_new_card_screen/view/add_new_card_screen_view.dart';
import 'package:lazaapp/features/presentation/address_screen/view/address_screen_view.dart';
import 'package:lazaapp/features/presentation/card_screen/view/cart_screen_view.dart';
import 'package:lazaapp/features/presentation/main_screen/main_screen_view.dart';
import 'package:lazaapp/features/presentation/order_confirmed_screen/view/order_confirmed_screen_view.dart';
import 'package:lazaapp/features/presentation/payment_screen/view/payment_screen_view.dart';
import 'package:lazaapp/features/presentation/start_screen/views/start_screen_view.dart';
import 'package:lazaapp/features/presentation/add_review_screen/view/add_review_screen_view.dart';
import 'package:lazaapp/features/presentation/auth_screen/view/auth_screen_view.dart';
import 'package:lazaapp/features/presentation/signUp_Screen/view/screen_three_view.dart';
import 'package:lazaapp/features/presentation/logIn_screen/view/screen_four_view.dart';
import 'package:lazaapp/features/presentation/forget_pass_screen/view/screen_five_view.dart';
import 'package:lazaapp/features/presentation/verification_code_screen/view/screen_six_view.dart';
import 'package:lazaapp/features/presentation/new_pass_screen/view/screen_seven_view.dart';
import 'package:lazaapp/features/presentation/home_screen/view/screen_eight_view.dart';
import 'package:lazaapp/features/presentation/reviews_screen/view/screen_nine_view.dart';
import 'package:lazaapp/features/presentation/splash/view/splash_screen.dart';

abstract class AppRouter {
  static const kStartScreenView = '/startScreenView';
  static const kauthScreenView = '/authScreenView';
  static const kmainScreenView = '/mainScreenView';
  static const kSignupScreenView = '/signupScreenView';
  static const kLogInScreenView = '/logInScreenView';
  static const kForgetPasswordScreenView = '/forgetPasswordScreenView';
  static const kVerfiCodeScreenView = '/verfiCodeScreenView';
  static const kNewPasswordScreenView = '/newPasswordScreenView';
  static const kHomeScreenView = '/homeScreenView';
  static const kReviewsScreenView = '/reviewsScreenView';
  static const kAddReviewScreenView = '/AddreviewScreenView';
  static const kCartScreenView = '/cartScreenView';
  static const kAdressScreenView = '/adressScreenView';
  static const kPaymentScreenView = '/paymentScreenView';
  static const kAddNewCardScreenView = '/addNewCardScreenView';
  static const kOrderConfirmedScreenView = '/orderConfirmedScreenView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreenView()),
    GoRoute(
        path: kStartScreenView,
        builder: (context, state) => const StartScreenView()),
    GoRoute(
        path: kauthScreenView,
        builder: (context, state) => const AuthScreenView()),
    GoRoute(
        path: kSignupScreenView,
        builder: (context, state) => const SignUpScreenView()),
    GoRoute(
        path: kLogInScreenView,
        builder: (context, state) => const LogInScreenView()),
    GoRoute(
        path: kForgetPasswordScreenView,
        builder: (context, state) => const ForgetPasswordScreenView()),
    GoRoute(
        path: kVerfiCodeScreenView,
        builder: (context, state) => const VerfiCodeScreenView()),
    GoRoute(
        path: kNewPasswordScreenView,
        builder: (context, state) => const NewPasswordScreenView()),
    GoRoute(
      path: kHomeScreenView,
      builder: (context, state) => const HomeScreenView(),
    ),
    GoRoute(
        path: kReviewsScreenView,
        builder: (context, state) => const ReviewsScreenView()),
    GoRoute(
        path: kAddReviewScreenView,
        builder: (context, state) => const AddReviewScreenView()),
    GoRoute(
        path: kCartScreenView,
        builder: (context, state) => const CartScreenView()),
    GoRoute(
        path: kAdressScreenView,
        builder: (context, state) => const AdressScreenView()),
    GoRoute(
        path: kPaymentScreenView,
        builder: (context, state) => const PaymentScreenView()),
    GoRoute(
        path: kAddNewCardScreenView,
        builder: (context, state) => const AddNewCardScreenView()),
    GoRoute(
        path: kOrderConfirmedScreenView,
        builder: (context, state) => const OrderConfirmedScreenView()),
    GoRoute(
        path: kmainScreenView,
        builder: (context, state) => const MainScreenView()),
  ]);
}
