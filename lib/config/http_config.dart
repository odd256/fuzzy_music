/*
 * @Creator: Odd
 * @Date: 2023-01-04 18:43:42
 * @LastEditTime: 2023-01-19 23:23:30
 * @FilePath: \fuzzy_music\lib\config\http_config.dart
 * @Description: 
 */
class HttpConfig {
  static const String address = 'localhost';
  static const int port = 3000;
  static const int connectTimeout = 8000;                // 请求超时时间
  static const int receiveTimeout = 8000;                // 响应超时时间
  static const bool logged = false;                       // 是否需要输出日志
  static const String baseUrl = 'http://$address:$port'; // 请求地址
}
