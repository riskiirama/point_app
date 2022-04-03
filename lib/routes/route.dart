import 'package:get/get.dart';
import 'package:point_app/pages/on_boarding_page.dart';
import 'package:point_app/pages/sign_up_page.dart';

import 'package:point_app/pages/sing_in_page.dart';
import 'package:point_app/pages/splash_page.dart';
import 'package:point_app/pages/welcome_page.dart';

class RouteHelper {
  static String splash = '/';
  static String onBoarding = '/onboarding';
  static String signUp = '/signUp';
  static String signIn = '/signIn';
  static String welcome = '/welcome';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: onBoarding, page: () => OnBoardingPage()),
    GetPage(name: signUp, page: () => SignUpPage()),
    GetPage(name: signIn, page: () => SignInPage()),
    GetPage(name: welcome, page: () => WelcomePage()),
  ];
}
