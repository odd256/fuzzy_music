/*
 * @Creator: Odd
 * @Date: 2023-01-04 18:58:09
 * @LastEditTime: 2023-01-12 07:32:12
 * @FilePath: \fuzzy_music\lib\routers\app_pages.dart
 * @Description: 
 */
import 'package:fuzzy_music/routers/views/home/home_controller.dart';
import 'package:get/get.dart';

import 'views/home/home_page.dart';
import 'views/login/login_page.dart';

class AppPages {
  static const login = '/login';
  static const home = '/home';

  static const initPage = login;
  static final routes = [
    GetPage(
      name: home,
      page: () => const HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
    ),
  ];
}

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
