/*
 * @Creator: Odd
 * @Date: 2023-01-04 19:01:32
 * @LastEditTime: 2023-01-07 00:16:57
 * @FilePath: \fuzzy_music\lib\routers\views\home\home_page.dart
 * @Description: 
 */
import 'package:flutter/cupertino.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:flutter/material.dart';
import 'package:fuzzy_music/routers/views/bottom_player_bar.dart';
import 'package:fuzzy_music/routers/views/recommendation/recommendation_page.dart';
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
      body: RecommendationPage(),
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
    return Row(
      children: [
        TextButton(
            onPressed: () => {},
            child: Text(
              '推荐',
              style: Theme.of(context).textTheme.headline6,
            )),
        const SizedBox(
          width: 25,
        ),
        TextButton(
            onPressed: () => {},
            child: Text(
              '发现',
              style: Theme.of(context).textTheme.headline6,
            )),
        const SizedBox(
          width: 25,
        ),
        TextButton(
            onPressed: () => {},
            child: Text(
              '我的音乐',
              style: Theme.of(context).textTheme.headline6,
            )),
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
