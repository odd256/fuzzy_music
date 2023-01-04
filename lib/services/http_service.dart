/*
 * @Creator: Odd
 * @Date: 2023-01-04 18:33:39
 * @LastEditTime: 2023-01-04 21:24:15
 * @FilePath: \fuzzy_music\lib\services\http_service.dart
 * @Description: 
 */
import 'package:dio/dio.dart';
import 'package:fuzzy_music/config/http_config.dart';
import 'package:get/get.dart';

class HttpService extends GetxService {
  static HttpService get to => Get.find();

  late final Dio _dio;
  Dio init() {
    _dio = Dio();
    _dio.options.baseUrl = HttpConfig.baseUrl;
    _dio.options.connectTimeout = HttpConfig.connectTimeout;
    _dio.options.receiveTimeout = HttpConfig.receiveTimeout;
    _dio.options.responseType = ResponseType.json;

    if (HttpConfig.logged) {
      _dio.interceptors.add(LogInterceptor(requestBody: true));
    }

    return _dio;
  }

  @override
  void onClose() {
    _dio.close();
    super.onClose();
  }
}
