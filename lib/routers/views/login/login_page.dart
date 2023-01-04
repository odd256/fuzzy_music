/*
 * @Creator: Odd
 * @Date: 2023-01-04 23:16:31
 * @LastEditTime: 2023-01-05 02:33:34
 * @FilePath: \fuzzy_music\lib\routers\views\login\login_page.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:fuzzy_music/routers/app_pages.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kWindowCaptionHeight),
          child: WindowCaption(
            brightness: Theme.of(context).brightness,
            title: const Text('Fuzzy Music'),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '登录网易云音乐账号',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 40,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: GestureDetector(
              onTap: () => {
                Get.offAllNamed(AppPages.home)
              },
              child: Container(
                width: 300,
                height: 300,
                color: Colors.blue,
                child: const Center(child: Text('我是二维码')),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              fui.Button(
                  onPressed: () => {},
                  child: Text(
                    '邮箱登录',
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
              const SizedBox(
                width: 20,
              ),
              fui.Button(
                  onPressed: () => {},
                  child: Text(
                    '手机登录',
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
