/*
 * @Creator: Odd
 * @Date: 2023-01-13 01:30:27
 * @LastEditTime: 2023-01-15 01:18:52
 * @FilePath: \fuzzy_music\lib\api\personalized.dart
 * @Description: 
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:fuzzy_music/services/http_service.dart';
import 'package:get/get.dart';

class PersonalizedApi {
  static final _dio = Get.find<Dio>();
  static Future<Personalized> personalized({int limit = 10}) async {
    var res = await _dio.get('/personalized?limit=$limit');
    return Personalized.fromJson(json.decode(res.data));
  }
}