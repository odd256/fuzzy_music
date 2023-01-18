/*
 * @Creator: Odd
 * @Date: 2023-01-18 00:45:29
 * @LastEditTime: 2023-01-18 19:51:17
 * @FilePath: \fuzzy_music\lib\services\audio_service.dart
 * @Description: 
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:fuzzy_music/api/song_url.dart';
import 'package:fuzzy_music/models/index.dart';
import 'package:fuzzy_music/models/song_url.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PlayState { playing, paused, stopped }

enum PlayMode { shuffle, sequential, loop }

class AudioService extends GetxController {
  late final AudioPlayer _player;
  static AudioService get to => Get.find();

  PlayState _curPlayState = PlayState.stopped;

  set curPlayState(c) => _curPlayState = c;

  PlayState get curPlayState => _curPlayState;

  Song? _curSong;

  set curSong(s) => _curSong = s;

  Song? get curSong => _curSong;

  double _curVolume = .5;

  set curVolume(v) => _curVolume = v;

  double get curVolume => _curVolume;

  Future<AudioService> init() async {
    _player = AudioPlayer();
    await AudioPlayer.global.changeLogLevel(LogLevel.info);
    // 设置默认音量
    final prefs = await SharedPreferences.getInstance();
    print(prefs.getDouble('volume'));
    _player
        .setVolume(prefs.getDouble('volume') ?? 0.5)
        .then((value) => curVolume = prefs.getDouble('volume') ?? 0.5);
    return this;
  }

  play(Song song) async {
    _curSong = song;
    update();
    SongUrl su = await SongUrlApi.songUrlApi(song.id);
    await _player.play(UrlSource(su.data[0].url)).then((value) {
      curPlayState = PlayState.playing;
      update();
    });
  }

  pause() async {
    await _player.pause().then((v) {
      curPlayState = PlayState.paused;
      update();
    });
  }

  resume() async {
    await _player.resume().then((value) {
      curPlayState = PlayState.playing;
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
      _curVolume = v;
      update();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble('volume', v);
    });
  }
}
