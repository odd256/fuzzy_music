/*
 * @Creator: Odd
 * @Date: 2023-01-04 18:25:15
 * @LastEditTime: 2023-01-04 21:23:42
 * @FilePath: \fuzzy_music\lib\services\netease_service.dart
 * @Description: 
 */
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:netease_music_api/netease_cloud_music.dart';

class NeteaseService extends GetxService {

  // 开启服务
  Future<HttpServer> init({address = "localhost", int port = 3000}) {
    return HttpServer.bind(address, port, shared: true).then((server) {
      debugPrint("start listen at: http://$address:$port");
      server.listen((request) {
        _handleRequest(request);
      });
      return server;
    });
  }

  // 处理请求
  void _handleRequest(HttpRequest request) async {
    if (request.uri.path == '/favicon.ico') {
      request.response.statusCode = 404;
      request.response.close();
      return;
    }
    final answer = await cloudMusicApi(request.uri.path,
            parameter: request.uri.queryParameters, cookie: request.cookies)
        .catchError((e, s) async {
      debugPrint(e.toString());
      debugPrint(s.toString());
      return const Answer();
    });

    request.response.statusCode = answer.status;
    request.response.cookies.addAll(answer.cookie);
    request.response.write(json.encode(answer.body));
    request.response.close();

    debugPrint("request[${answer.status}] : ${request.uri}");
  }
}
