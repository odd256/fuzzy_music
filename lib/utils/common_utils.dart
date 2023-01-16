/*
 * @Creator: Odd
 * @Date: 2023-01-17 01:46:44
 * @LastEditTime: 2023-01-17 02:04:39
 * @FilePath: \fuzzy_music\lib\utils\common_utils.dart
 * @Description: 
 */
import 'package:intl/intl.dart';

class CommonUtils {
  static timestamps2Datetime(int timestamps, DateFormat df) {
    final String formatted =
        df.format(DateTime.fromMillisecondsSinceEpoch(timestamps));
    return formatted;
  }
}
