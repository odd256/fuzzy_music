/*
 * @Creator: Odd
 * @Date: 2023-01-16 15:46:50
 * @LastEditTime: 2023-01-16 15:58:53
 * @FilePath: \fuzzy_music\lib\api\playlist_detail.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/playlist_detail.dart';
import 'package:get/get.dart';

class PlaylistDetailaApi {
  static final _dio = Get.find<Dio>();
  static playlistDetail(int id) async {
    var res = await _dio.get('/playlist/detail?id=$id');
    return PlaylistDetail.fromJson(json.decode(res.data));
  }
}