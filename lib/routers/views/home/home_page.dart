/*
 * @Creator: Odd
 * @Date: 2023-01-04 19:01:32
 * @LastEditTime: 2023-01-15 23:11:28
 * @FilePath: \fuzzy_music\lib\routers\views\home\home_page.dart
 * @Description: 
 */
import 'package:flutter/cupertino.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:flutter/material.dart';
import 'package:fuzzy_music/routers/views/bottom_player_bar.dart';
import 'package:fuzzy_music/routers/views/discovery/discovery_page.dart';
import 'package:fuzzy_music/routers/views/home/home_controller.dart';
import 'package:fuzzy_music/routers/views/my_music/my_music_page.dart';
import 'package:fuzzy_music/routers/views/recommendation/recommendation_page.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WindowListener {
  @override
  void initState() {
    windowManager.addListener(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomPlayerBar(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kWindowCaptionHeight + 60),
          child: Column(
            children: [
              SizedBox(
                height: const Size.fromHeight(kWindowCaptionHeight).height,
                child: WindowCaption(
                  brightness: Theme.of(context).brightness,
                  title: const Text('Fuzzy Music'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(100, 0, 100, 12),
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
      body: GetBuilder<HomeController>(
        builder: (_)=>_.currentPage,
      ),
    );
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Future<void> onWindowClose() async {
    bool isPreventClose = await windowManager.isPreventClose();
    if (isPreventClose) {
      showDialog(
        context: context,
        builder: (_) {
          return fui.ContentDialog(
            title: Text(
              '确定要关闭吗？',
              style: Theme.of(context).textTheme.headline5,
            ),
            // content: Text('是否要关闭当前窗口', style: Theme.of(context).textTheme.bodyLarge),
            actions: [
              fui.FilledButton(
                child: const Text(
                  '关闭',
                  style: TextStyle(fontFamily: 'msyh'),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  windowManager.destroy();
                },
              ),
              fui.Button(
                child: const Text(
                  '取消',
                  style: TextStyle(fontFamily: 'msyh'),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
    super.onWindowClose();
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
    return GetBuilder<HomeController>(
      initState: (_) {},
      builder: (_) {
        return Row(
          children: [
            fui.ToggleButton(
                checked: _.currentPage is RecommendationPage,
                onChanged: (_) {
                  homeController.currentPage =
                      homeController.pages['recommend']!;
                },
                child: Text(
                  '推荐',
                  style: Theme.of(context).textTheme.button,
                )),
            const SizedBox(
              width: 25,
            ),
            fui.ToggleButton(
                checked: _.currentPage is DiscoveryPage,
                onChanged: (_) {
                  homeController.currentPage =
                      homeController.pages['discovery']!;
                },
                child: Text(
                  '发现',
                  style: Theme.of(context).textTheme.button,
                )),
            const SizedBox(
              width: 25,
            ),
            fui.ToggleButton(
                checked: _.currentPage is MyMusicPage,
                onChanged: (_) {
                  homeController.currentPage = homeController.pages['myMusic']!;
                },
                child: Text(
                  '我的乐库',
                  style: Theme.of(context).textTheme.button,
                )),
          ],
        );
      },
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
