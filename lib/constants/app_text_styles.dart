import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle titleStyle(double size) =>
      TextStyle(fontSize: 0.04 * size, fontWeight: FontWeight.w700);
  static TextStyle mediumTextStyle(double size) =>
      TextStyle(fontSize: 0.03 * size, fontWeight: FontWeight.w500);
  static TextStyle regularTextStyle(double size) =>
      TextStyle(fontSize: 0.03 * size, fontWeight: FontWeight.w400);
  static TextStyle semiBoldTextStyle(double size) =>
      TextStyle(fontSize: 0.05 * size, fontWeight: FontWeight.w600);
}
