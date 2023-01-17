/*
 * @Creator: Odd
 * @Date: 2023-01-18 01:06:47
 * @LastEditTime: 2023-01-18 01:11:35
 * @FilePath: \fuzzy_music\lib\api\song_url.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/song_url.dart';
import 'package:get/get.dart';

class SongUrlApi {
  static final _dio = Get.find<Dio>();
  static songUrlApi(int id) async {
    var res = await _dio.get('/song/url?id=$id');
    return SongUrl.fromJson(json.decode(res.data));
  }
}
