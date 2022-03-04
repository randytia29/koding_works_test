import 'package:flutter/material.dart';

class AppConfig {
  static String title = 'Flutter Koding Works';

  static double widthScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double paddingHorizontal = 24.0;
  static double paddingVertical = 24.0;

  static double heightHomeAppBar = 200.0;

  static InputBorder searchInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(50));
}
