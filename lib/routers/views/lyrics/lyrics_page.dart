import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:fuzzy_music/routers/views/bottom_player_bar.dart';
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
    return Container(
      height: 500,
      width: 400,
      child: ListView.builder(itemBuilder: ((context, index) {
        return Text('1');
      })),
    );
  }
}

class SongDetailWidget extends StatelessWidget {
  const SongDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioService>(builder: (_) {
      return Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                  height: 360,
                  width: 300,
                  imageUrl: _.audioState.currentSong?.al.picUrl ?? '',
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      fui.ProgressBar(value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error)),
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
                      ),
                      Text(
                        '${_.audioState.currentSong?.ar.map((e) => e.name.removeAllWhitespace).join('/') ?? '未知艺术家'}-${_.audioState.currentSong?.al.name ?? '未知专辑'}',
                        overflow: TextOverflow.ellipsis,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('00:00'),
                fui.Slider(
                  max: 1,
                  value: 0.5,
                  onChanged: (value) => {},
                ),
                Text(CommonUtils.timestamps2Datetime(
                    _.audioState.currentSong?.dt ?? 0, "mm:ss"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                fui.IconButton(
                    onPressed: () => {}, icon: Icon(CupertinoIcons.repeat_1)),
                PlayerStateWidget(),
                fui.IconButton(
                    onPressed: () => {}, icon: Icon(CupertinoIcons.shuffle)),
              ],
            )
          ],
        ),
      );
    });
  }
}
