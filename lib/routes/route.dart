import 'package:get/get.dart';
import 'package:point_app/pages/auth/otp_verifikation.dart';
import 'package:point_app/pages/on_boarding/boarding_2.dart';
import 'package:point_app/pages/on_boarding/boarding_3.dart';
import 'package:point_app/pages/on_boarding/boarding_4.dart';
import 'package:point_app/pages/on_boarding/boarding_5.dart';
import 'package:point_app/pages/on_boarding/boarding_6.dart';
import 'package:point_app/pages/on_boarding/boarding_7.dart';
import 'package:point_app/pages/on_boarding/boarding_page.dart';
import 'package:point_app/pages/auth/sign_up_page.dart';
import 'package:point_app/pages/auth/sing_in_page.dart';
import 'package:point_app/pages/splash_page.dart';
import 'package:point_app/pages/welcome/buzz_page.dart';
import 'package:point_app/pages/welcome/chat_page.dart';
import 'package:point_app/pages/welcome/edit_profile_page.dart';
import 'package:point_app/pages/welcome/list_page.dart';
import 'package:point_app/pages/welcome/selected_catergory.dart';
import 'package:point_app/pages/welcome/setting_page.dart';

import 'package:point_app/pages/welcome_page.dart';

class RouteHelper {
  static String splash = '/';
  static String onBoarding = '/onboarding';
  static String onBoarding2 = '/onboarding2';
  static String onBoarding3 = '/onboarding3';
  static String onBoarding4 = '/onboarding4';
  static String onBoarding5 = '/onboarding5';
  static String onBoarding6 = '/onboarding6';
  static String onBoarding7 = '/onboarding7';
  static String signUp = '/signUp';
  static String verifkasi = '/verifikasi';
  static String signIn = '/signIn';
  static String welcome = '/welcome';
  static String chat = '/chat';
  static String editProfile = '/editProfile';
  static String setting = '/setting';
  static String list = '/list';
  static String selectedCategory = '/selectedCategory';
  static String buzz = '/buzz';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: onBoarding, page: () => OnBoardingPage()),
    GetPage(name: onBoarding2, page: () => OnBoarding2Page()),
    GetPage(name: onBoarding3, page: () => OnBoarding3Page()),
    GetPage(name: onBoarding4, page: () => OnBoarding4Page()),
    GetPage(name: onBoarding5, page: () => OnBoarding5Page()),
    GetPage(name: onBoarding6, page: () => OnBoarding6Page()),
    GetPage(name: onBoarding7, page: () => OnBoarding7Page()),
    GetPage(name: signUp, page: () => SignUpPage()),
    GetPage(name: verifkasi, page: () => PinCodeVerificationPage()),
    GetPage(name: signIn, page: () => SignInPage()),
    GetPage(name: welcome, page: () => WelcomePage()),
    GetPage(name: chat, page: () => ChatPage()),
    GetPage(name: editProfile, page: () => EditProfilePage()),
    GetPage(name: setting, page: () => SettingPage()),
    GetPage(name: list, page: () => ListPage()),
    GetPage(name: selectedCategory, page: () => SelectedCategory()),
    GetPage(name: buzz, page: () => BuzzPage()),
  ];
}
