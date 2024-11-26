import 'package:flutter/material.dart';

abstract class ThemeText {
  static TextTheme textTheme = const TextTheme().copyWith(
    displayLarge: TextStyle(
      color: Colors.grey[800],
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: const TextStyle(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      color: Colors.grey[500],
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
    headlineMedium: TextStyle(
      color: Colors.grey[600],
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      color: Colors.grey[600],
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      color: Colors.purple[400],
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: const TextStyle(
      color: Colors.blue,
    ),
    titleSmall: const TextStyle(
      color: Colors.black,
    ),
    bodySmall: const TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
    ),
  );
}
