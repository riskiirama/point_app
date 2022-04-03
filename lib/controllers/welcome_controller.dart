import 'package:get/get.dart';
import 'package:point_app/pages/welcome/add_page.dart';
import 'package:point_app/pages/welcome/home_page.dart';
import 'package:point_app/pages/welcome/hot_page.dart';
import 'package:point_app/pages/welcome/message_page.dart';
import 'package:point_app/pages/welcome/profile_page.dart';

class WelcomeController extends GetxController {
  var currentIndex = 0.obs;

  var screens = [
    HomePage(),
    HotPage(),
    AddPage(),
    MessagePage(),
    ProfilePage(),
  ];
}
