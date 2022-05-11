import 'package:flutter/material.dart';

abstract class ThemeText {
  static const sortTitle = TextStyle(
    color: Colors.blue,
  );

  static const searchText = TextStyle(
    fontSize: 18.0,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static TextStyle tabBarTitle = TextStyle(
    color: Colors.grey[800],
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle chipBlockTitle = TextStyle(
    color: Colors.grey[500],
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
  );

  static const multiChipText = TextStyle(
    color: Colors.black,
  );

  static TextStyle newsTitle = TextStyle(
    color: Colors.grey[600],
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );

  static TextStyle newsSubTitle = TextStyle(
    color: Colors.grey[600],
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle newsSource = TextStyle(
    color: Colors.purple[400],
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
}
