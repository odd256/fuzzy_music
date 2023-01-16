/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:31:08
 * @LastEditTime: 2023-01-16 15:38:04
 * @FilePath: \fuzzy_music\lib\routers\views\recommendation\recommendation_page.dart
 * @Description: 
 */
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:fuzzy_music/routers/views/home/home_controller.dart';
import 'package:fuzzy_music/routers/views/playlist/playlist_page.dart';
import 'package:fuzzy_music/routers/views/recommendation/recommend_controller.dart';
import 'package:get/get.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({super.key});

  _buildPlaylists(playlists, {List<int> selectedIndex = const <int>[]}) {
    const size = Size(205, 205);
    List<Widget> pls = [];
    if (selectedIndex.isEmpty) {
      for (var p in playlists) {
        pls.add(
          SongListCard(
            playlist: p,
            size: size,
          ),
        );
      }
    } else {
      for (int i in selectedIndex) {
        pls.add(
          SongListCard(
            playlist: playlists[i],
            size: size,
          ),
        );
      }
    }
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: pls,
      ),
    );
  }

  _buildArtists(artists) {
    List<Widget> arts = [];
    const size = Size(182, 182);
    for (Artist a in artists) {
      arts.add(RecommendOval(imgUrl: a.picUrl, title: a.name, size: size));
    }
    return arts;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return GetBuilder<RecommendController>(
        init: RecommendController(),
        builder: (_) {
          return ListView(
            controller: _.scrollController,
            padding: EdgeInsets.symmetric(
                horizontal: (mediaQuerySize.width - 240 * 5) / 2 + 30),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '推荐歌单',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              _buildPlaylists(_.personalized.result.isNotEmpty
                  ? _.personalized.result.sublist(0, 5)
                  : _.personalized.result),
              _buildPlaylists(_.personalized.result.isNotEmpty
                  ? _.personalized.result.sublist(5, 10)
                  : _.personalized.result),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'For You',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    RecommendCard(imgUrl: 'imgUrl', title: 'title'),
                    RecommendCard(imgUrl: 'imgUrl', title: 'title'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '推荐艺人',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _buildArtists(
                      _.toplistArtist.list.artists.isNotEmpty
                          ? _.toplistArtist.list.artists.sublist(0, 5)
                          : _.toplistArtist.list.artists),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '新专速递',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              _buildPlaylists(_.topAlbum.monthData.isNotEmpty
                  ? _.topAlbum.monthData.sublist(0, 5)
                  : _.topAlbum.monthData),
              _buildPlaylists(_.topAlbum.monthData.isNotEmpty
                  ? _.topAlbum.monthData.sublist(5, 10)
                  : _.topAlbum.monthData),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '排行榜',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              _buildPlaylists(_.toplist.list,
                  selectedIndex:
                      _.toplist.list.isNotEmpty ? [0, 11, 12, 28, 13] : []),
            ],
          );
        });
  }
}

class SongListCard extends StatefulWidget {
  final playlist;
  final Size size;
  const SongListCard({super.key, required this.playlist, required this.size});
  @override
  State<SongListCard> createState() => _SongListCardState();
}

class _SongListCardState extends State<SongListCard> {
  bool isShowed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      child: Column(
        children: [
          GetBuilder<HomeController>(builder: (_) {
            return TextButton(
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
              onPressed: () => _.currentPage = PlaylistPage(
                playlistId: widget.playlist.id,
              ),
              child: MouseRegion(
                onEnter: (event) => setState(() {
                  isShowed = true;
                }),
                onExit: (event) => setState(() {
                  isShowed = false;
                }),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: isShowed
                          ? [
                              BoxShadow(
                                // color: Theme.of(context).focusColor, //底色,阴影颜色
                                color: Theme.of(context).hoverColor, //底色,阴影颜色
                                offset: Offset(0, 8), //阴影位置,从什么位置开始
                                blurRadius: 8, // 阴影模糊层度
                                spreadRadius: 6, //阴影模糊大小
                              )
                            ]
                          : [],
                    ),
                    child: CachedNetworkImage(
                      width: widget.size.width,
                      height: widget.size.height,
                      fit: BoxFit.cover,
                      imageUrl: widget.playlist is TopSonglist
                          ? widget.playlist.coverImgUrl
                          : widget.playlist.picUrl,
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  if (isShowed)
                    IconButton(
                      style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () => {print('icon')},
                      iconSize: 46,
                      mouseCursor: SystemMouseCursors.basic,
                      icon: ClipOval(
                          child: Container(
                              color: Theme.of(context).canvasColor,
                              child: Icon(
                                color: Theme.of(context).iconTheme.color,
                                Icons.play_arrow_rounded,
                              ))),
                    )
                ]),
              ),
            );
          }),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.playlist.name,
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}

class RecommendCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  const RecommendCard({super.key, required this.imgUrl, required this.title});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 160,
        width: 490,
        color: Colors.red,
        child: Center(child: Text(title)),
      ),
    );
  }
}

class RecommendOval extends StatefulWidget {
  final String title;
  final String imgUrl;
  final Size size;
  const RecommendOval(
      {super.key,
      required this.title,
      required this.imgUrl,
      required this.size});

  @override
  State<RecommendOval> createState() => _RecommendOvalState();
}

class _RecommendOvalState extends State<RecommendOval> {
  bool isShowed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: TextButton(
            style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
            onPressed: () {},
            child: MouseRegion(
              onEnter: (event) => setState(() {
                isShowed = true;
              }),
              onExit: (event) => setState(() {
                isShowed = false;
              }),
              child: Stack(alignment: Alignment.center, children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: widget.size.height,
                  width: widget.size.width,
                  imageUrl: widget.imgUrl,
                  // placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                if (isShowed)
                  IconButton(
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                        foregroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: () => {print('icon')},
                    iconSize: 46,
                    mouseCursor: SystemMouseCursors.basic,
                    icon: ClipOval(
                        child: Container(
                            color: Theme.of(context).canvasColor,
                            child: Icon(
                              color: Theme.of(context).iconTheme.color,
                              Icons.play_arrow_rounded,
                            ))),
                  )
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.title,
          style: Theme.of(context).textTheme.subtitle1,
        )
      ],
    );
  }
}
