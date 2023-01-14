/*
 * @Creator: Odd
 * @Date: 2023-01-13 01:25:07
 * @LastEditTime: 2023-01-15 02:31:43
 * @FilePath: \fuzzy_music\lib\routers\views\recommendation\recommend_controller.dart
 * @Description: 
 */
import 'dart:developer';

import 'package:fuzzy_music/api/toplist_artist.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:fuzzy_music/api/personalized.dart';
import 'package:get/get.dart';

class RecommendController extends GetxController {
  RecommendController();
  Personalized _personalized =
      const Personalized(hasTaste: false, code: 0, category: 0, result: []);
  set personalized(value) => _personalized = value;
  Personalized get personalized => _personalized;

  ToplistArtist _toplistArtist = const ToplistArtist(
      list: ArtistList(artists: [], updateTime: 0, type: 0), code: 0);
  set toplistArtist(value) => _toplistArtist = value;
  ToplistArtist get toplistArtist => _toplistArtist;

  @override
  Future<void> onInit() async {
    _initPersonalized();
    _initToplistArtist();
    super.onInit();
  }

  // 初始化推荐歌单
  _initPersonalized() async {
    final p = await PersonalizedApi.personalized();
    _personalized = p;
    update();
  }

  // 初始化推荐艺人
  _initToplistArtist() async {
    final toplistArtist = await ToplistArtistApi.topListArtist();
    _toplistArtist = toplistArtist;
    update();
  }
}
