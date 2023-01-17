/*
 * @Creator: Odd
 * @Date: 2023-01-15 22:31:15
 * @LastEditTime: 2023-01-17 20:49:45
 * @FilePath: \fuzzy_music\lib\api\playlist_track_all.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:get/get.dart';

class PlaylistTrackAllApi {
  static final _dio = Get.find<Dio>();
  static playlistTrackAll(int id, int limit, int offset) async {
    var res = await _dio.get('/playlist/track/all?id=$id&limit=$limit&offset=$offset');
    return PlaylistTrackAll.fromJson(json.decode(res.data));
  }
}