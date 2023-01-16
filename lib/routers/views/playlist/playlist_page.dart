/*
 * @Creator: Odd
 * @Date: 2023-01-15 22:39:44
 * @LastEditTime: 2023-01-17 02:29:23
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
import 'package:fuzzy_music/utils/common_utils.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PlaylistPage extends StatelessWidget {
  final int playlistId;
  const PlaylistPage({super.key, required this.playlistId});

  _buildSongList(List<Song> songs) {
    List<Widget> sl = [];
    for (Song s in songs) {
      sl.add(SongListTile(song: s));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: sl,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlaylistController>(
        init: PlaylistController(currentPlaylistId: playlistId),
        builder: (_) {
          return ListView(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 40),
                      height: 270,
                      width: 270,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: CachedNetworkImage(
                          imageUrl: '${_.playlistDetail?.playlist.coverImgUrl}',
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error)),
                    ),
                    Container(
                      height: 270,
                      width: 800,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${_.playlistDetail?.playlist.name}',
                            style: Theme.of(context).textTheme.headline2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Created by ${_.playlistDetail?.playlist.creator.nickname}',
                            style: Theme.of(context).textTheme.subtitle1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '最后更新于 ${CommonUtils.timestamps2Datetime(_.playlistDetail?.playlist.updateTime ?? 0, DateFormat("yyyy-MM-dd hh:mm"))} · ${_.playlistDetail?.playlist.trackCount} 首歌',
                            style: Theme.of(context).textTheme.subtitle2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${_.playlistDetail?.playlist.description}',
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
              _buildSongList(_.playlistTracks.songs)
            ],
          );
        });
  }
}

class SongListTile extends StatelessWidget {
  final Song song;

  const SongListTile({super.key, required this.song});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 1070,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: CachedNetworkImage(
                    imageUrl: song.al.picUrl,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => Icon(Icons.error)),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      song.name,
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      song.ar.map((e) => e.name).join('/'),
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
              child: Text(
                song.al.name,
                style: Theme.of(context).textTheme.subtitle2,
                overflow: TextOverflow.ellipsis,
              )),
          Container(
            width:80,
            child: Text(
                '${CommonUtils.timestamps2Datetime(song.dt, DateFormat('mm:ss'))}'),
          )
        ],
      ),
    );
  }
}
