/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:31:08
 * @LastEditTime: 2023-01-07 00:05:49
 * @FilePath: \fuzzy_music\lib\routers\views\recommendation\recommendation_page.dart
 * @Description: 
 */
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    const songListCardSize = Size(200, 200);
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: (mediaQuerySize.width - 240 * 5) / 2 + 20),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '推荐歌单',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'For You',
            style: Theme.of(context).textTheme.headline4,
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
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              RecommendOval(imgUrl: 'imgUrl', title: 'title'),
              RecommendOval(imgUrl: 'imgUrl', title: 'title'),
              RecommendOval(imgUrl: 'imgUrl', title: 'title'),
              RecommendOval(imgUrl: 'imgUrl', title: 'title'),
              RecommendOval(imgUrl: 'imgUrl', title: 'title'),
              RecommendOval(imgUrl: 'imgUrl', title: 'title'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '新专速递',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '排行榜',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
              SongListCard(
                title: 'title',
                imgUrl: 'imgUrl',
                size: songListCardSize,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SongListCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  final Size size;
  const SongListCard(
      {super.key,
      required this.title,
      required this.imgUrl,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: size.height,
              width: size.width,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
            overflow: TextOverflow.ellipsis,
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

class RecommendOval extends StatelessWidget {
  final String title;
  final String imgUrl;
  const RecommendOval({super.key, required this.imgUrl, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Container(
            height: 170,
            width: 170,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'title',
          style: Theme.of(context).textTheme.subtitle1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
