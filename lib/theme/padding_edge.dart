import 'package:flutter/material.dart';

abstract class PaddingEdge {
  static const allZero = EdgeInsets.all(0.0);
  static const allFive = EdgeInsets.all(5.0);
  static const allTen = EdgeInsets.all(10.0);
  static const leftTen = EdgeInsets.fromLTRB(10, 0, 0, 0);
  static const leftFifteen = EdgeInsets.fromLTRB(15, 0, 0, 0);
  static const tabPadding = EdgeInsets.fromLTRB(0, 10, 0, 10);
  static const chipPadding = EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 15.0);
}
