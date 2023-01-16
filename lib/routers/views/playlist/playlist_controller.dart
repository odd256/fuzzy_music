/*
 * @Creator: Odd
 * @Date: 2023-01-15 22:42:13
 * @LastEditTime: 2023-01-17 00:20:07
 * @FilePath: \fuzzy_music\lib\routers\views\playlist\playlist_controller.dart
 * @Description: 
 */
import 'package:fuzzy_music/api/playlist_detail.dart';
import 'package:fuzzy_music/api/playlist_track_all.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:fuzzy_music/models/playlist_detail.dart';
import 'package:fuzzy_music/models/top_album.dart';
import 'package:fuzzy_music/routers/views/recommendation/recommend_controller.dart';
import 'package:get/get.dart';

class PlaylistController extends GetxController {
  final int currentPlaylistId;

  PlaylistController({required this.currentPlaylistId});

  PlaylistDetail? _playlistDetail;
  PlaylistDetail? get playlistDetail => _playlistDetail;
  set playlistDetail(p) => _playlistDetail = p;

  PlaylistTrackAll _playlistTracks =
      const PlaylistTrackAll(songs: [], privileges: [], code: 0);

  PlaylistTrackAll get playlistTracks => _playlistTracks;
  set playlistTracks(p) => _playlistTracks = p;

  @override
  void onInit() {
    _initPlaylistData();
    super.onInit();
  }

  // 初始化歌单歌曲数据
  _initPlaylistData() async {
    final PlaylistDetail pd = await PlaylistDetailaApi.playlistDetail(currentPlaylistId);
    playlistDetail = pd;
    final p = await PlaylistTrackAllApi.playlistTrackAll(pd.playlist.id);
    _playlistTracks = p;
    update();
  }
}
