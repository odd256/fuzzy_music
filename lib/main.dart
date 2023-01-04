/*
 * @Creator: Odd
 * @Date: 2023-01-04 03:00:45
 * @LastEditTime: 2023-01-05 02:28:52
 * @FilePath: \fuzzy_music\lib\main.dart
 * @Description: 
 */
import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:flutter/widgets.dart';
import 'package:fuzzy_music/config/window_config.dart';
import 'package:fuzzy_music/routers/app_pages.dart';
import 'package:fuzzy_music/services/http_service.dart';
import 'package:fuzzy_music/services/netease_service.dart';
import 'package:fuzzy_music/services/tray_service.dart';
import 'package:get/get.dart';

import 'config/theme_config.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  // 对窗口进行初始化操作
  configWindow();

  // 启动一些必要服务
  await initService();

  runApp(const MyApp());
}

initService() async {
  log('--------initService start--------');
  await Get.putAsync(() => NeteaseService().init());
  Get.put(HttpService().init());
  Get.put(TrayService().init());
  log('--------initService done---------');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return fui.AnimatedFluentTheme(
      data: fui.ThemeData(),
      child: GetMaterialApp(
        localizationsDelegates: const [fui.FluentLocalizations.delegate],
        theme: lightThemeData,
        darkTheme: darkThemeData,
        themeMode: fui.ThemeMode.light,
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.initPage,
        getPages: AppPages.routes,
      ),
    );
  }
}
