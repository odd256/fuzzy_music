/*
 * @Creator: Odd
 * @Date: 2023-01-04 19:01:32
 * @LastEditTime: 2023-01-12 06:43:31
 * @FilePath: \fuzzy_music\lib\routers\views\home\home_page.dart
 * @Description: 
 */
import 'package:flutter/cupertino.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:flutter/material.dart';
import 'package:fuzzy_music/routers/views/bottom_player_bar.dart';
import 'package:fuzzy_music/routers/views/home/home_controller.dart';
import 'package:fuzzy_music/routers/views/recommendation/recommendation_page.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final tabs = ['推荐', '历史', '图片'];
  // final tabController = TabController(length: tabs.length, vsync: this)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomPlayerBar(),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(76),
          child: Column(
            children: [
              SizedBox(
                height: 28,
                child: WindowCaption(
                  brightness: Theme.of(context).brightness,
                  title: const Text('Fuzzy Music'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    NavigatorArrow(),
                    TabSwitcher(),
                    SearchAndUserWidget()
                  ],
                ),
              )
            ],
          )),
      body: Obx(() => HomeController.to.currentPage),
    );
  }
}

class NavigatorArrow extends StatelessWidget {
  const NavigatorArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        fui.IconButton(
            icon: Icon(
              CupertinoIcons.left_chevron,
              size: 24,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {}),
        const SizedBox(
          width: 10,
        ),
        fui.IconButton(
            icon: Icon(
              CupertinoIcons.right_chevron,
              size: 24,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {}),
      ],
    );
  }
}

class TabSwitcher extends StatelessWidget {
  const TabSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Row(
      children: [
        Obx(
          () => fui.ToggleButton(
              checked: homeController.tabNames == TabNames.recommend,
              onChanged: (_) {
                homeController.tabNames = TabNames.recommend;
                homeController.currentPage = homeController.pages['recommend']!;
              },
              child: Text(
                '推荐',
                style: Theme.of(context).textTheme.headline6,
              )),
        ),
        const SizedBox(
          width: 25,
        ),
        Obx(
          () => fui.ToggleButton(
              checked: homeController.tabNames == TabNames.discovery,
              onChanged: (_) {
                homeController.tabNames = TabNames.discovery;
                homeController.currentPage = homeController.pages['discovery']!;
              },
              child: Text(
                '发现',
                style: Theme.of(context).textTheme.headline6,
              )),
        ),
        const SizedBox(
          width: 25,
        ),
        Obx(
          () => fui.ToggleButton(
              checked: homeController.tabNames == TabNames.myMusic,
              onChanged: (_) {
                homeController.tabNames = TabNames.myMusic;
                homeController.currentPage = homeController.pages['myMusic']!;
              },
              child: Text(
                '我的乐库',
                style: Theme.of(context).textTheme.headline6,
              )),
        ),
      ],
    );
  }
}

class SearchAndUserWidget extends StatelessWidget {
  const SearchAndUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          SizedBox(
              width: 168,
              height: 32,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      size: 20,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              )),
          SizedBox(
            width: 10,
          ),
          CircleAvatar()
        ],
      ),
    );
  }
}
