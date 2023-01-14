/*
 * @Creator: Odd
 * @Date: 2023-01-15 05:25:41
 * @LastEditTime: 2023-01-15 05:29:18
 * @FilePath: \fuzzy_music\lib\api\top_album.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/top_album.dart';
import 'package:get/get.dart';

class TopAlbumApi {
  static final _dio = Get.find<Dio>();
  static topAlbum({String area = 'ALL', int limit = 10}) async {
    var res = await _dio.get('/top/album?offset=0&limit=$limit&area=$area');
    return TopAlbum.fromJson(json.decode(res.data));
  }
}
