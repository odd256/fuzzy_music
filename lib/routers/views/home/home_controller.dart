/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:37:00
 * @LastEditTime: 2023-01-16 15:37:16
 * @FilePath: \fuzzy_music\lib\routers\views\home\home_controller.dart
 * @Description:
 */
import 'package:flutter/cupertino.dart';
import 'package:fuzzy_music/routers/views/discovery/discovery_page.dart';
import 'package:fuzzy_music/routers/views/my_music/my_music_page.dart';
import 'package:fuzzy_music/routers/views/playlist/playlist_page.dart';
import 'package:fuzzy_music/routers/views/recommendation/recommendation_page.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final pages = <String, Widget>{
    'recommend': RecommendationPage(),
    'discovery': DiscoveryPage(),
    'myMusic': MyMusicPage(),
    'playlist': PlaylistPage(playlistId: 0,),
  };

  Widget _currentPage = RecommendationPage();

  static HomeController get to => Get.find();



  set currentPage(Widget tab) {
    _currentPage = tab;
    update();
  }

  Widget get currentPage => _currentPage;
}
