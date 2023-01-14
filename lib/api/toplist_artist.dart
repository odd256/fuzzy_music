/*
 * @Creator: Odd
 * @Date: 2023-01-15 01:56:17
 * @LastEditTime: 2023-01-15 02:31:39
 * @FilePath: \fuzzy_music\lib\api\toplist_artist.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:get/get.dart';

class ToplistArtistApi {
  static final _dio = Get.find<Dio>();
  static topListArtist({int type=1}) async {
    var res = await _dio.get('/toplist/artist?type=$type');
    return ToplistArtist.fromJson(json.decode(res.data));
  }
}
