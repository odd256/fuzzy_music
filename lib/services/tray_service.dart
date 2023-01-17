/*
 * @Creator: Odd
 * @Date: 2023-01-04 21:10:01
 * @LastEditTime: 2023-01-18 00:51:24
 * @FilePath: \fuzzy_music\lib\services\tray_service.dart
 * @Description: 
 */
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:system_tray/system_tray.dart';

class TrayService extends GetxService {
  static TrayService get to => Get.find();

  Future<TrayService> init() async {
    String path = Platform.isWindows
        ? 'images/tray_icon_original.ico'
        : 'images/tray_icon_original.png';

    final AppWindow appWindow = AppWindow();
    final SystemTray systemTray = SystemTray();

    // We first init the systray menu
    await systemTray.initSystemTray(
      title: "Fuzzy Muisc",
      iconPath: path,
    );

    // create context menu
    final Menu menu = Menu();
    await menu.buildFrom([
      MenuItemLabel(
        label: '显示',
        onClicked: (p0) => appWindow.show(),
      ),
      MenuItemLabel(
        label: '隐藏',
        onClicked: (p0) => appWindow.hide(),
      ),
      MenuSeparator(),
      MenuItemLabel(
        label: '退出',
        onClicked: (p0) => appWindow.close(),
      )
    ]);

    // set context menu
    await systemTray.setContextMenu(menu);

    // handle system tray event
    systemTray.registerSystemTrayEventHandler((eventName) {
      debugPrint("eventName: $eventName");
      if (eventName == kSystemTrayEventClick) {
        Platform.isWindows ? appWindow.show() : systemTray.popUpContextMenu();
      } else if (eventName == kSystemTrayEventRightClick) {
        Platform.isWindows ? systemTray.popUpContextMenu() : appWindow.show();
      }
    });
    return this;
  }
}
