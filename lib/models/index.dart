/*
 * @Creator: Odd
 * @Date: 2023-01-13 01:20:34
 * @LastEditTime: 2023-01-15 18:21:29
 * @FilePath: \fuzzy_music\lib\models\index.dart
 * @Description: 
 */
export 'personalized.dart';
export 'toplist.dart';
export 'toplist_artist.dart';
import 'package:quiver/core.dart';

T? checkOptional<T>(Optional<T?>? optional, T? Function()? def) {
  // No value given, just take default value
  if (optional == null) return def?.call();

  // We have an input value
  if (optional.isPresent) return optional.value;

  // We have a null inside the optional
  return null;
}
