/*
 * @Creator: Odd
 * @Date: 2023-01-26 07:35:10
 * @LastEditTime: 2023-01-26 07:37:15
 * @FilePath: \fuzzy_music\lib\routers\views\lyrics\lyrics_controller.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LyricsController extends GetxController {
  final _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  @override
  onInit() {
    // 歌词滚动管理
    _scrollController.addListener(() {
      print('hello world!');
    });
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
  }
}
