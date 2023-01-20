/*
 * @Creator: Odd
 * @Date: 2023-01-07 00:10:43
 * @LastEditTime: 2023-01-20 21:19:03
 * @FilePath: \fuzzy_music\lib\routers\views\bottom_player_bar.dart
 * @Description: 
 */
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:fuzzy_music/services/audio_service.dart';
import 'package:get/get.dart';

class BottomPlayerBar extends StatelessWidget {
  const BottomPlayerBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;

    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: (mediaQuerySize.width - 240 * 5) / 2 + 20),
        height: 88,
        color: Theme.of(context).canvasColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AlbumStateWidget(),
            PlayerStateWidget(),
            PlayerControllerWidget()
          ],
        ),
      ),
    );
  }
}

class AlbumStateWidget extends StatelessWidget {
  const AlbumStateWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioService>(builder: (_) {
      return Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  height: 66,
                  width: 66,
                  child: _.audioState.currentSong == null
                      ? const FlutterLogo()
                      : CachedNetworkImage(
                          imageUrl: _.audioState.currentSong?.al.picUrl ?? ''),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _.audioState.currentSong?.name ?? '你还没播放歌曲',
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    _.audioState.currentSong?.ar
                            .map((e) => e.name.removeAllWhitespace)
                            .join('/') ??
                        '未知艺术家',
                    style: Theme.of(context).textTheme.subtitle2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

class PlayerStateWidget extends StatelessWidget {
  const PlayerStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioService>(
      builder: (_) {
        return Container(
          child: Row(
            children: [
              fui.IconButton(
                icon: Icon(
                  // CupertinoIcons.backward_end_fill,
                  Icons.skip_previous_rounded,
                  size: 32,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: _.audioState.currentIndex == -1
                    ? () => {}
                    : () => _.playPrevious(),
              ),
              fui.IconButton(
                icon: _.audioState.currentPlayerState == PlayerState.playing
                    ? Icon(
                        // CupertinoIcons.play_arrow_solid,
                        Icons.pause_rounded,
                        size: 50,
                        color: Theme.of(context).iconTheme.color,
                      )
                    : Icon(
                        // CupertinoIcons.play_arrow_solid,
                        Icons.play_arrow_rounded,
                        size: 50,
                        color: Theme.of(context).iconTheme.color,
                      ),
                onPressed:
                    _.audioState.currentPlayerState == PlayerState.stopped
                        ? () => {}
                        : () {
                            if (_.audioState.currentPlayerState ==
                                PlayerState.playing) {
                              _.pause();
                            } else if (_.audioState.currentPlayerState ==
                                PlayerState.paused) {
                              _.resume();
                            }
                          },
              ),
              fui.IconButton(
                  icon: Icon(
                    Icons.skip_next_rounded,
                    size: 32,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: _.audioState.currentIndex == -1
                      ? () => {}
                      : () => _.playNext()),
            ],
          ),
        );
      },
    );
  }
}

class PlayerControllerWidget extends StatelessWidget {
  const PlayerControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioService>(builder: (_) {
      buildVolumeBtn() {
        if (_.audioState.currentVolume > 0.75 &&
            _.audioState.currentVolume <= 1.0) {
          return CupertinoIcons.volume_up;
        } else if (_.audioState.currentVolume < 0.75 &&
            _.audioState.currentVolume > 0) {
          return CupertinoIcons.volume_down;
        } else {
          return CupertinoIcons.volume_off;
        }
      }

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
              style: _.audioState.currentMode == PlayerMode.loop
                  ? fui.ButtonStyle(
                      backgroundColor:
                          fui.ButtonState.all(Theme.of(context).primaryColor))
                  : null,
              icon: Icon(
                CupertinoIcons.repeat_1,
                size: 20,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () => {_.changeMode(PlayerMode.loop)},
            ),
            SizedBox(
              width: 10,
            ),
            fui.IconButton(
              // icon: Icon(CupertinoIcons.pause_fill),
              style: _.audioState.currentMode == PlayerMode.shuffle
                  ? fui.ButtonStyle(
                      backgroundColor:
                          fui.ButtonState.all(Theme.of(context).primaryColor))
                  : null,
              icon: Icon(
                CupertinoIcons.shuffle,
                size: 20,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () => {_.changeMode(PlayerMode.shuffle)},
            ),
            SizedBox(
              width: 10,
            ),
            fui.IconButton(
              // icon: Icon(CupertinoIcons.pause_fill),
              icon: Icon(
                buildVolumeBtn(),
                size: 20,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {
                if (_.audioState.currentVolume != 0) {
                  _.volume(0);
                } else {
                  _.volume(0.5);
                }
              },
            ),
            SizedBox(
              width: 10,
            ),
            fui.Slider(
              max: 1,
              value: _.audioState.currentVolume,
              onChanged: (value) => _.volume(value),
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
    });
  }
}
