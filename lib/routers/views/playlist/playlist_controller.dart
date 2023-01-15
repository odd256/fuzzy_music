/*
 * @Creator: Odd
 * @Date: 2023-01-15 22:42:13
 * @LastEditTime: 2023-01-15 22:42:17
 * @FilePath: \fuzzy_music\lib\routers\views\playlist\playlist_controller.dart
 * @Description: 
 */
import 'package:get/get.dart';

class PlaylistController extends GetxController {

PlaylistController();
  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}