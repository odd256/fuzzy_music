/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:30:26
 * @LastEditTime: 2023-01-15 06:45:58
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
            _buildLabelButton(context, '全部', true, (v) => {}),
            _buildLabelButton(context, '推荐歌单', false, (v) => {}),
            _buildLabelButton(context, '精品歌单', false, (v) => {}),
            _buildLabelButton(context, '官方', false, (v) => {}),
            _buildLabelButton(context, '排行榜', false, (v) => {}),
            _buildLabelButton(context, '欧美', false, (v) => {}),
            _buildLabelButton(context, '流行', false, (v) => {}),
            _buildLabelButton(context, '摇滚', false, (v) => {}),
            _buildLabelButton(context, '电子', false, (v) => {}),
            _buildLabelButton(context, '说唱', false, (v) => {}),
            _buildLabelButton(context, 'ACG', false, (v) => {}),
          ],
        )
      ],
    );
  }

  Padding _buildLabelButton(BuildContext context,
      String labelName, bool checked, Function(bool) onChange) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: fui.ToggleButton(
        checked: checked,
        onChanged: onChange,
        child: Text(
          labelName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
