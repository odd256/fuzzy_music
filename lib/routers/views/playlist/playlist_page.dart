/*
 * @Creator: Odd
 * @Date: 2023-01-15 22:39:44
 * @LastEditTime: 2023-01-16 15:52:11
 * @FilePath: \fuzzy_music\lib\routers\views\playlist\playlist_page.dart
 * @Description: 
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:fuzzy_music/routers/views/playlist/playlist_controller.dart';
import 'package:get/get.dart';

class PlaylistPage extends StatelessWidget {
  final int playlistId;
  const PlaylistPage({super.key, required this.playlistId});

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return GetBuilder<PlaylistController>(
        init: PlaylistController(currentPlaylistId: playlistId),
        builder: (_) {
          return ListView(
            padding: EdgeInsets.symmetric(
                horizontal: (mediaQuerySize.width - 240 * 5) / 2 + 30),
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      height: 270,
                      width: 270,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                    ),
                    Container(
                      height: 270,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '想和你躺在草坪上，慵懒地晒着太阳☀',
                            style: Theme.of(context).textTheme.headline2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Playlist by 树莓小雪糕',
                            style: Theme.of(context).textTheme.subtitle1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '最后更新于 2022年05月14日 · 156 首歌',
                            style: Theme.of(context).textTheme.subtitle2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            height: 100,
                            width: 700,
                            child: TextButton(
                              style: ButtonStyle(
                                  padding: MaterialStatePropertyAll(
                                      EdgeInsets.all(0))),
                              onPressed: () => {},
                              child: Text(
                                '春天的秘密藏在风里，藏在和煦的阳光里，我想对你说的秘密藏在每一首歌里。 想要和你躺在草坪上，慵懒地晒着太阳☀想要和你靠在一起，分享我的耳机。 你眯着眼，阳光落在你的脸上，你嗅了嗅，闻到近处的花香，我们就这样靠在一起，不说话也很美好。远方的鸟儿在歌唱，唱可爱的你，唱温柔的太阳。宝藏歌单。',
                                style: Theme.of(context).textTheme.bodyText1,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              fui.FilledButton(
                                child: Container(
                                  child: Row(children: [
                                    Icon(
                                      Icons.play_arrow_rounded,
                                      size: 36,
                                    ),
                                    Text("播放",
                                        style:
                                            Theme.of(context).textTheme.button)
                                  ]),
                                ),
                                onPressed: () => {},
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              fui.IconButton(
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.favorite_rounded,
                                  size: 36,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              fui.IconButton(
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.more_horiz_rounded,
                                  size: 36,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SongListTile()
            ],
          );
        });
  }
}

class SongListTile extends StatelessWidget {
  const SongListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 300,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('歌曲名'), Text('歌手名')],
              )
            ],
          ),
        ),
        Text('专辑名'),
        Text('时长')
      ],
    );
  }
}
