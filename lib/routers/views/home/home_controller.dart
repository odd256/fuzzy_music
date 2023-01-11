/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:37:00
 * @LastEditTime: 2023-01-12 06:44:19
 * @FilePath: \fuzzy_music\lib\routers\views\home\home_controller.dart
 * @Description:
 */
import 'package:flutter/cupertino.dart';
import 'package:fuzzy_music/routers/views/discovery/discovery_page.dart';
import 'package:fuzzy_music/routers/views/my_music/my_music_page.dart';
import 'package:fuzzy_music/routers/views/recommendation/recommendation_page.dart';
import 'package:get/get.dart';

enum TabNames { recommend, discovery, myMusic, none }

class HomeController extends GetxController {
  final _tabNames = TabNames.recommend.obs;

  final pages = <String, Widget>{
    'recommend': RecommendationPage(),
    'discovery': DiscoveryPage(),
    'myMusic': MyMusicPage()
  };

  final _currentPage = Rx<Widget>(RecommendationPage());

  static HomeController get to => Get.find();

  set tabNames(TabNames tabNames) => _tabNames.value = tabNames;

  TabNames get tabNames => _tabNames.value;

  set currentPage(Widget tab) => _currentPage.value = tab;
  Widget get currentPage => _currentPage.value;
}
