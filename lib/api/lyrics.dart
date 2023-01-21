/*
 * @Creator: Odd
 * @Date: 2023-01-15 18:21:45
 * @LastEditTime: 2023-01-21 21:21:34
 * @FilePath: \fuzzy_music\lib\api\lyrics.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/lyrics.dart';
import 'package:get/get.dart';

class LyricsApi {
  static final _dio = Get.find<Dio>();
  static lyrics(int id) async {
    var res = await _dio.get('/lyrics?id=$id');
    return Lyrics.fromJson(json.decode(res.data));
  }
}
