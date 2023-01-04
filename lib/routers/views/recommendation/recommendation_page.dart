/*
 * @Creator: Odd
 * @Date: 2023-01-05 01:31:08
 * @LastEditTime: 2023-01-05 02:51:16
 * @FilePath: \fuzzy_music\lib\routers\views\recommendation\recommendation_page.dart
 * @Description: 
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '推荐歌单',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
                SongListCard(title: 'title', imgUrl: 'imgUrl'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'For You',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RecommendCard(imgUrl: 'imgUrl', title: 'title'),
                RecommendCard(imgUrl: 'imgUrl', title: 'title'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SongListCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  const SongListCard({super.key, required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        width: 200,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
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
        height: 100,
        width: 440,
        color: Colors.red,
        child: Center(child: Text(title)),
      ),
    );
  }
}
