/*
 * @Creator: Odd
 * @Date: 2023-01-18 00:45:29
 * @LastEditTime: 2023-01-20 03:54:03
 * @FilePath: \fuzzy_music\lib\services\audio_service.dart
 * @Description: 
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:fuzzy_music/api/playlist_track_all.dart';
import 'package:fuzzy_music/api/song_url.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:fuzzy_music/models/playlist_detail.dart';
import 'package:fuzzy_music/models/song_url.dart';
import 'package:fuzzy_music/routers/views/playlist/playlist_controller.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PlayerState { playing, paused, stopped }

enum PlayerMode { shuffle, sequential, loop }

class AudioService extends GetxController {
  late final AudioPlayer _player;
  static AudioService get to => Get.find();

  AudioState audioState = AudioState(
      currentIndex: -1,
      currentPlayerState: PlayerState.stopped,
      currentMode: PlayerMode.sequential,
      currentVolume: 0.5);

  Future<AudioService> init() async {
    _player = AudioPlayer();
    await AudioPlayer.global.changeLogLevel(LogLevel.info);
    // 设置默认音量
    final prefs = await SharedPreferences.getInstance();
    volume(prefs.getDouble('volume') ?? audioState.currentVolume);
    _player.onPlayerComplete.listen((event) {
      switch (audioState.currentMode) {
        case PlayerMode.shuffle:
          // TODO: Handle this case.

          break;
        case PlayerMode.sequential:
          int curIdx = audioState.currentIndex;
          int totalCount = audioState.currentDetail!.playlist.trackCount;
          if (curIdx <= 0) {
            play(totalCount - 1);
          } else {
            play(curIdx + 1 <= totalCount - 1 ? curIdx + 1 : 0);
          }
          break;
        case PlayerMode.loop:
          play(audioState.currentIndex);
          break;
      }
    });
    return this;
  }

  play(int index) async {
    audioState.currentDetail ??= PlaylistController.to.playlistDetail!;

    // 防止超出范围
    if (index < 0) {
      index = audioState.currentDetail!.playlist.trackCount - 1;
    } else if (index > audioState.currentDetail!.playlist.trackCount - 1) {
      index = 0;
    }
    // 请求对应的歌曲
    PlaylistTrackAll trackAll = await PlaylistTrackAllApi.playlistTrackAll(
      audioState.currentDetail!.playlist.id,
      1,
      index,
    );

    // 更新歌曲状态
    audioState.currentSong = trackAll.songs[0];
    audioState.currentIndex = index;

    // 请求歌曲URL
    SongUrl su = await SongUrlApi.songUrlApi(audioState.currentSong!.id);
    await _player.play(UrlSource(su.data[0].url)).then((value) {
      audioState.currentPlayerState = PlayerState.playing;
      update();
    });
  }

  pause() async {
    await _player.pause().then((v) {
      // curPlayState = PlayerState.paused;
      audioState.currentPlayerState = PlayerState.paused;
      update();
    });
  }

  resume() async {
    await _player.resume().then((value) {
      // curPlayState = PlayerState.playing;
      audioState.currentPlayerState = PlayerState.playing;
      update();
    });
  }

  seek(Duration st, Duration et, Duration to) async {
    if (st.compareTo(to) < 0 && et.compareTo(to) > 0) {
      await _player.seek(to);
    } else {
      printError(info: 'Range Error!');
    }
  }

  volume(double v) async {
    // 默认的音量为1.0（最高）
    await _player.setVolume(v).then((value) async {
      // _curVolume = v;
      audioState.currentVolume = v;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble('volume', v);
      update();
    });
  }

  changeMode(PlayerMode mode) {
    audioState.currentMode = mode;
    // TODO: change mode
    update();
  }
}

class AudioState {
  // 当前播放的状态
  PlayerState currentPlayerState;
  // 当前播放的歌曲
  Song? currentSong;
  // 当前的下标
  int currentIndex;
  // 当前播放的模式
  PlayerMode currentMode;
  // 当前的音量
  double currentVolume;
  // 当前歌单的详细信息
  PlaylistDetail? currentDetail;

  AudioState(
      {required this.currentIndex,
      required this.currentPlayerState,
      this.currentSong,
      this.currentDetail,
      required this.currentMode,
      required this.currentVolume});
}
