/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:37:00
 * @LastEditTime: 2023-01-12 05:28:27
 * @FilePath: \fuzzy_music\lib\routers\views\home\home_controller.dart
 * @Description:
 */
import 'package:get/get.dart';

enum TabNames {
  recommend,
  discovery,
  myMusic,
}

class HomeController extends GetxController {
  final _tabNames = TabNames.recommend.obs;
  
  static HomeController get to => Get.find();

  set tabNames(TabNames tabNames) => _tabNames.value = tabNames;

  TabNames get tabNames => _tabNames.value;
}
