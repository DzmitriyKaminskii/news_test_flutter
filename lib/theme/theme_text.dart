import 'package:flutter/material.dart';

abstract class ThemeText {
  static TextTheme textTheme = const TextTheme().copyWith(
    headline1: TextStyle(
      color: Colors.grey[800],
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    ),
    headline2: const TextStyle(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    headline3: TextStyle(
      color: Colors.grey[500],
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
    headline4: TextStyle(
      color: Colors.grey[600],
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
    headline5: TextStyle(
      color: Colors.grey[600],
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      color: Colors.purple[400],
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
    subtitle1: const TextStyle(
      color: Colors.blue,
    ),
    subtitle2: const TextStyle(
      color: Colors.black,
    ),
    caption: const TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
    ),
  );
}
