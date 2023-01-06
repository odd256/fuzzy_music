/*
 * @Creator: Odd
 * @Date: 2023-01-07 00:10:43
 * @LastEditTime: 2023-01-07 01:40:07
 * @FilePath: \fuzzy_music\lib\routers\views\bottom_player_bar.dart
 * @Description: 
 */
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;

class BottomPlayerBar extends StatelessWidget {
  const BottomPlayerBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;

    return BottomAppBar(
      child: InkWell(
        hoverColor: Theme.of(context).canvasColor,
        onTap: () => {},
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: (mediaQuerySize.width - 240 * 5) / 2 + 20),
          height: 88,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AlbumStateWidget(),
              PlayerStateWidget(),
              PlayerControllerWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class AlbumStateWidget extends StatelessWidget {
  const AlbumStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Container(
                height: 66,
                width: 66,
                color: Colors.blue,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('歌名'),
              SizedBox(
                height: 8,
              ),
              Text('歌手名'),
            ],
          )
        ],
      ),
    );
  }
}

class PlayerStateWidget extends StatelessWidget {
  const PlayerStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          fui.IconButton(
            icon: Icon(
              CupertinoIcons.backward_end_fill,
              size: 20,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
          SizedBox(width: 6),
          fui.IconButton(
            icon: Icon(
              CupertinoIcons.play_arrow_solid,
              size: 40,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
          SizedBox(width: 6),
          fui.IconButton(
            icon: Icon(
              CupertinoIcons.forward_end_fill,
              size: 20,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}

class PlayerControllerWidget extends StatelessWidget {
  const PlayerControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          fui.IconButton(
            // icon: Icon(CupertinoIcons.pause_fill),
            icon: Icon(
              CupertinoIcons.music_note_list,
              size: 20,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
          SizedBox(
            width: 10,
          ),
          fui.IconButton(
            // icon: Icon(CupertinoIcons.pause_fill),
            icon: Icon(
              CupertinoIcons.repeat_1,
              size: 20,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
          SizedBox(
            width: 10,
          ),
          fui.IconButton(
            // icon: Icon(CupertinoIcons.pause_fill),
            icon: Icon(
              CupertinoIcons.shuffle,
              size: 20,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
          SizedBox(
            width: 10,
          ),
          fui.IconButton(
            // icon: Icon(CupertinoIcons.pause_fill),
            icon: Icon(
              CupertinoIcons.volume_down,
              size: 20,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
          SizedBox(
            width: 10,
          ),
          fui.Slider(
            value: 30,
            onChanged: (value) => {},
          ),
          SizedBox(
            width: 10,
          ),
          fui.IconButton(
            // icon: Icon(CupertinoIcons.pause_fill),
            icon: Icon(
              CupertinoIcons.chevron_up,
              size: 20,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
