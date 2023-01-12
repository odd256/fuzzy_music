/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:30:26
 * @LastEditTime: 2023-01-12 20:34:39
 * @FilePath: \fuzzy_music\lib\routers\views\discovery\discovery_page.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: (mediaQuerySize.width - 240 * 5) / 2 + 20),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '发现',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Row(
          children: [
            _buildLabelButton('全部', true, (v) => {}),
            _buildLabelButton('推荐歌单', false, (v) => {}),
            _buildLabelButton('精品歌单', false, (v) => {}),
            _buildLabelButton('官方', false, (v) => {}),
            _buildLabelButton('排行榜', false, (v) => {}),
            _buildLabelButton('欧美', false, (v) => {}),
            _buildLabelButton('流行', false, (v) => {}),
            _buildLabelButton('摇滚', false, (v) => {}),
            _buildLabelButton('电子', false, (v) => {}),
            _buildLabelButton('说唱', false, (v) => {}),
            _buildLabelButton('ACG', false, (v) => {}),
          ],
        )
      ],
    );
  }

  Padding _buildLabelButton(
      String labelName, bool checked, Function(bool) onChange) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: fui.ToggleButton(
        checked: checked,
        onChanged: onChange,
        child: Text(
          labelName,
          style: TextStyle(fontSize: 20, fontFamily: 'msyh'),
        ),
      ),
    );
  }
}
