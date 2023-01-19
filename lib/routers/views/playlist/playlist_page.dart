/*
 * @Creator: Odd
 * @Date: 2023-01-15 22:39:44
 * @LastEditTime: 2023-01-19 23:54:14
 * @FilePath: \fuzzy_music\lib\routers\views\playlist\playlist_page.dart
 * @Description: 
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:fuzzy_music/models/playlist_track_all.dart';
import 'package:fuzzy_music/routers/views/playlist/playlist_controller.dart';
import 'package:fuzzy_music/services/audio_service.dart';
import 'package:fuzzy_music/utils/common_utils.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PlaylistPage extends StatelessWidget {
  final int playlistId;
  const PlaylistPage({super.key, required this.playlistId});

  _buildSongList(List<Song> songs, context) {
    return SliverFixedExtentList(
        delegate: SliverChildBuilderDelegate((_, index) {
          if (index == songs.length) {
            if (index ==
                PlaylistController.to.playlistDetail?.playlist.trackCount) {
              return Center(
                child: Text(
                  '没有更多啦~',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              );
            } else {
              PlaylistController.to.retrieveTracksData(offset: songs.length);
              return Center(
                child: Text(
                  '加载中...',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              );
            }
          } else {
            return GetBuilder<AudioService>(
                builder: (_) => SongListTile(
                      playlistIndex: index,
                      song: songs[index],
                      selected: songs[index].id ==
                          (_.audioState.currentSong?.id ?? -1),
                    ));
          }
        }, childCount: songs.length + 1),
        itemExtent: 66);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlaylistController>(
      initState: (state) {
        
      },
        init: PlaylistController(currentPlaylistId: playlistId),
        builder: (_) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: PlaylistHeader(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                ),
              ),
              _buildSongList(_.playlistTracks.songs, context),
            ],
          );
        });
  }
}

class PlaylistHeader extends StatelessWidget {
  const PlaylistHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlaylistController>(
      builder: (_) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 40),
            height: 300,
            width: 300,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: CachedNetworkImage(
                imageUrl: '${_.playlistDetail?.playlist.coverImgUrl}',
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    fui.ProgressBar(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error)),
          ),
          Container(
            height: 300,
            width: 800,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _.playlistDetail?.playlist.name ?? '正在加载中...',
                  style: Theme.of(context).textTheme.headline2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  _.playlistDetail == null
                      ? '正在加载中...'
                      : 'Created by ${_.playlistDetail?.playlist.creator.nickname}',
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  _.playlistDetail == null
                      ? '正在加载中...'
                      : '最后更新于 ${CommonUtils.timestamps2Datetime(_.playlistDetail?.playlist.updateTime ?? 0, DateFormat("yyyy-MM-dd hh:mm"))} · ${_.playlistDetail?.playlist.trackCount} 首歌',
                  style: Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  _.playlistDetail?.playlist.description ?? '还没加载出来哦!',
                  style: Theme.of(context).textTheme.bodyText1,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    fui.FilledButton(
                      child: Container(
                        child: Row(children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 32,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          Text("播放", style: Theme.of(context).textTheme.button)
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
      );
    });
  }
}

class SongListTile extends StatefulWidget {
  final playlistIndex;
  final Song song;
  final bool selected;
  const SongListTile(
      {super.key,
      required this.song,
      required this.selected,
      required this.playlistIndex});

  @override
  State<SongListTile> createState() => _SongListTileState();
}

class _SongListTileState extends State<SongListTile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 66,
        width: 1100,
        decoration: widget.selected
            ? BoxDecoration(
                color: Theme.of(context).focusColor,
                borderRadius: BorderRadius.circular(12))
            : null,
        child: InkWell(
          splashFactory: NoSplash.splashFactory,
          onDoubleTap: () => AudioService.to.play(widget.playlistIndex),
          borderRadius: BorderRadius.circular(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(6, 6, 18, 6),
                    width: 60,
                    height: 60,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: CachedNetworkImage(
                        imageUrl: widget.song.al.picUrl,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder: (context, url,
                                downloadProgress) =>
                            fui.ProgressBar(value: downloadProgress.progress),
                        errorWidget: (context, url, error) =>
                            Icon(Icons.error)),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.song.name,
                          style: Theme.of(context).textTheme.subtitle1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.song.ar
                              .map((e) => e.name.removeAllWhitespace)
                              .join('/'),
                          style: Theme.of(context).textTheme.subtitle2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  width: 300,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.song.al.name,
                      style: Theme.of(context).textTheme.subtitle2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              Container(
                width: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${CommonUtils.timestamps2Datetime(widget.song.dt, DateFormat('mm:ss'))}',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
