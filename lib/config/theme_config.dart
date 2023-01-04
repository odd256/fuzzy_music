/*
 * @Creator: Odd
 * @Date: 2023-01-04 19:47:47
 * @LastEditTime: 2023-01-05 01:27:56
 * @FilePath: \fuzzy_music\lib\config\theme_config.dart
 * @Description: 
 */
import 'package:flutter/material.dart';

var lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xff416ff4),
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Color(0xffF7F9FB),
  dividerColor: Colors.grey.withOpacity(0.3),
  fontFamily: 'msyh'
);

var darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xff416ff4),
  canvasColor: Color(0xff282828),
  scaffoldBackgroundColor: Color(0xff1d1d1d),
);