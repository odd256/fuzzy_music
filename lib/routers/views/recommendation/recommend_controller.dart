/*
 * @Creator: Odd
 * @Date: 2023-01-13 01:25:07
 * @LastEditTime: 2023-01-16 15:01:52
 * @FilePath: \fuzzy_music\lib\routers\views\recommendation\recommend_controller.dart
 * @Description: 
 */
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:fuzzy_music/api/top_album.dart';
import 'package:fuzzy_music/api/toplist.dart';
import 'package:fuzzy_music/api/toplist_artist.dart';
import 'package:fuzzy_music/config/window_config.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:fuzzy_music/api/personalized.dart';
import 'package:fuzzy_music/models/top_album.dart';
import 'package:get/get.dart';

class RecommendController extends GetxController {
  RecommendController();
  
  static RecommendController get to => Get.find();
  
  final _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  Personalized _personalized =
      const Personalized(hasTaste: false, code: 0, category: 0, result: []);
  set personalized(value) => _personalized = value;
  Personalized get personalized => _personalized;

  ToplistArtist _toplistArtist = const ToplistArtist(
      list: ArtistList(artists: [], updateTime: 0, type: 0), code: 0);
  set toplistArtist(value) => _toplistArtist = value;
  ToplistArtist get toplistArtist => _toplistArtist;

  TopAlbum _topAlbum =
      const TopAlbum(weekData: [], hasMore: false, monthData: [], code: 0);
  set topAlbum(value) => _topAlbum = value;
  TopAlbum get topAlbum => _topAlbum;

  Toplist _toplist = const Toplist(
      list: [],
      code: 0,
      artistToplist: ArtistToplist(
          coverUrl: '',
          name: '',
          upateFrequency: '',
          position: 0,
          updateFrequency: ''));

  set toplist(value) => _toplist = value;
  Toplist get toplist => _toplist;

  @override
  Future<void> onInit() async {
    _initPersonalized();
    _initToplistArtist();
    _initTopAlbum();
    _initToplist();
    scrollController.addListener(() {
      if (isDesktop) {
        const EXTRA_SCROLL_SPEED = 53;
        ScrollDirection scrollDirection =
            _scrollController.position.userScrollDirection;
        if (scrollDirection != ScrollDirection.idle) {
          double scrollEnd = _scrollController.offset +
              (scrollDirection == ScrollDirection.reverse
                  ? EXTRA_SCROLL_SPEED
                  : -EXTRA_SCROLL_SPEED);
          scrollEnd = min(_scrollController.position.maxScrollExtent,
              max(_scrollController.position.minScrollExtent, scrollEnd));
          _scrollController.jumpTo(scrollEnd);
        }
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
  }

  // 初始化推荐歌单
  _initPersonalized() async {
    final p = await PersonalizedApi.personalized();
    personalized = p;
    update();
  }

  // 初始化推荐艺人
  _initToplistArtist() async {
    final t = await ToplistArtistApi.topListArtist();
    toplistArtist = t;
    update();
  }

  // 初始化新专速递
  _initTopAlbum() async {
    final t = await TopAlbumApi.topAlbum();
    topAlbum = t;
    update();
  }

  // 初始化排行榜
  _initToplist() async {
    final t = await ToplistApi.toplist();
    toplist = t;
    update();
  }
}
