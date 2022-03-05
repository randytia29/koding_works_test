import 'package:flutter/material.dart';

class AppConfig {
  static String title = 'Flutter Koding Works';

  static double widthScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double paddingHorizontal = 24.0;
  static double paddingVertical = 24.0;

  static double heightHomeAppBar = 200.0;

  static String baseUrl = 'https://api.warung.io/customer/ecommerce';

  static Map<String, String> headersApi = {
    'x-location-id': '60e466dfa18eb7bde1b4c2bb',
    'x-tenant-id': '60e466dfa18eb7bde1b4c2aa'
  };

  static InputBorder searchInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(50));

  static const Widget loadingKodingWorks =
      Center(child: CircularProgressIndicator());
}
