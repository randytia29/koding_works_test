import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/core/preferences/colors.dart';

class LatestInfo extends StatelessWidget {
  const LatestInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      height: 275,
      width: AppConfig.widthScreen(context),
      padding: EdgeInsets.symmetric(
          horizontal: AppConfig.paddingHorizontal,
          vertical: AppConfig.paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Informasi Terbaru',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Informasi terbaru hanya untukmu'),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(items: [
            Container(
              margin: const EdgeInsets.only(right: 24),
              height: 100,
              width: 300,
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.only(right: 24),
              height: 50,
              width: 300,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(right: 24),
              height: 50,
              width: 300,
              color: Colors.green,
            )
          ], options: CarouselOptions(height: 150, autoPlay: true)),
        ],
      ),
    );
  }
}
