import 'package:flutter/material.dart';

abstract class AppColors {
  static ColorScheme themeColors = ColorScheme.fromSeed(
    primary: Colors.blue,
    seedColor: Colors.white,
    primaryContainer: Colors.grey[600],
    onPrimaryContainer: Colors.grey[400],
    secondaryContainer: Colors.grey[300],
    onSecondaryContainer: Colors.grey[200],
    tertiary: Colors.purple[100],
    onTertiary: Colors.purple[400],
  );
}
