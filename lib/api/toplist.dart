/*
 * @Creator: Odd
 * @Date: 2023-01-15 18:21:45
 * @LastEditTime: 2023-01-15 18:23:07
 * @FilePath: \fuzzy_music\lib\api\toplist.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/toplist.dart';
import 'package:get/get.dart';

class ToplistApi {
  static final _dio = Get.find<Dio>();
  static toplist() async {
    var res = await _dio.get('/toplist');
    return Toplist.fromJson(json.decode(res.data));
  }
}