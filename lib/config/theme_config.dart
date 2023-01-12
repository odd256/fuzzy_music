/*
 * @Creator: Odd
 * @Date: 2023-01-04 19:47:47
 * @LastEditTime: 2023-01-13 00:42:44
 * @FilePath: \fuzzy_music\lib\config\theme_config.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:system_theme/system_theme.dart';

var lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xff416ff4),
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Color(0xffF7F9FB),
  dividerColor: Colors.grey.withOpacity(0.3),
  fontFamily: 'msyh',
);

var darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xff416ff4),
  canvasColor: Color(0xff282828),
  scaffoldBackgroundColor: Color(0xff1d1d1d),
  fontFamily: 'msyh',
);

var color = fui.AccentColor.swatch({
  'darkest': SystemTheme.accentColor.darkest,
  'darker': SystemTheme.accentColor.darker,
  'dark': SystemTheme.accentColor.dark,
  'normal': SystemTheme.accentColor.accent,
  'light': SystemTheme.accentColor.light,
  'lighter': SystemTheme.accentColor.lighter,
  'lightest': SystemTheme.accentColor.lightest,
});

var fuiLightThemeData = fui.ThemeData(
  accentColor: color,
  visualDensity: VisualDensity.standard,
  focusTheme: fui.FocusThemeData(
    glowFactor: fui.is10footScreen() ? 2.0 : 0.0,
  ),
);

var fuiDarkThemeData = fui.ThemeData(
  brightness: Brightness.dark,
  accentColor: color,
  visualDensity: VisualDensity.standard,
  focusTheme: fui.FocusThemeData(
    glowFactor: fui.is10footScreen() ? 2.0 : 0.0,
  ),
);
