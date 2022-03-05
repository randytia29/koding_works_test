import 'package:flutter/material.dart';
import '../../../../app/config.dart';
import '../../../../core/preferences/colors.dart';
import 'banners_carousel.dart';

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
      padding: EdgeInsets.symmetric(vertical: AppConfig.paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppConfig.paddingHorizontal),
            child: const Text(
              'Informasi Terbaru',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppConfig.paddingHorizontal),
            child: const Text('Informasi terbaru hanya untukmu'),
          ),
          const SizedBox(
            height: 10,
          ),
          const BannersCarousel(),
        ],
      ),
    );
  }
}
