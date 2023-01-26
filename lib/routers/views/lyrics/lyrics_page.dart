import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:fuzzy_music/routers/views/bottom_player_bar.dart';
import 'package:fuzzy_music/routers/views/lyrics/lyrics_controller.dart';
import 'package:fuzzy_music/services/audio_service.dart';
import 'package:fuzzy_music/utils/common_utils.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

class LyricsPage extends StatelessWidget {
  const LyricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kWindowCaptionHeight + 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                child: fui.IconButton(
                    onPressed: () => {Get.back()},
                    icon: Icon(
                      CupertinoIcons.chevron_down,
                      size: 20,
                      color: Theme.of(context).iconTheme.color,
                    )),
              ),
            )),
        body: GetBuilder<AudioService>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SongDetailWidget(),
              SizedBox(
                width: 100,
              ),
              LyricsWidget()
            ],
          );
        }));
  }
}

class LyricsWidget extends StatelessWidget {
  const LyricsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AudioService audioService = AudioService.to;
    return GetBuilder<LyricsController>(
      init: LyricsController(),
      builder: (_) {
        return Container(
          height: double.infinity,
          width: 500,
          child: ListView.builder(
            controller: _.scrollController,
            itemBuilder: ((context, index) {
              return Text(
                audioService.audioState.lyrics[index],
                style: Theme.of(context).textTheme.headline5,
              );
            }),
            itemCount: audioService.audioState.lyrics.length,
          ),
        );
      },
    );
  }
}

class SongDetailWidget extends StatelessWidget {
  const SongDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioService>(builder: (_) {
      return Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                  height: 400,
                  width: 400,
                  imageUrl: _.audioState.currentSong?.al.picUrl ?? '',
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      fui.ProgressBar(value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _.audioState.currentSong?.name ?? '加载中...',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '${_.audioState.currentSong?.ar.map((e) => e.name.removeAllWhitespace).join('/') ?? '未知艺术家'}-${_.audioState.currentSong?.al.name ?? '未知专辑'}',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                ),
                fui.IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    CupertinoIcons.suit_heart,
                    size: 20,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00:00',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Container(
                  width: 280,
                  child: fui.Slider(
                    max: 1,
                    value: 0.5,
                    onChanged: (value) => {},
                  ),
                ),
                Text(
                  CommonUtils.timestamps2Datetime(
                      _.audioState.currentSong?.dt ?? 0, "mm:ss"),
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                fui.IconButton(
                  // icon: Icon(CupertinoIcons.pause_fill),
                  style: _.audioState.currentMode == PlayerMode.loop
                      ? fui.ButtonStyle(
                          backgroundColor: fui.ButtonState.all(
                              Theme.of(context).primaryColor))
                      : null,
                  icon: Icon(
                    CupertinoIcons.repeat_1,
                    size: 16,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () => {_.changeMode(PlayerMode.loop)},
                ),
                SizedBox(
                  width: 20,
                ),
                PlayerStateWidget(),
                SizedBox(
                  width: 20,
                ),
                fui.IconButton(
                  // icon: Icon(CupertinoIcons.pause_fill),
                  style: _.audioState.currentMode == PlayerMode.shuffle
                      ? fui.ButtonStyle(
                          backgroundColor: fui.ButtonState.all(
                              Theme.of(context).primaryColor))
                      : null,
                  icon: Icon(
                    CupertinoIcons.shuffle,
                    size: 16,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () => {_.changeMode(PlayerMode.shuffle)},
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
