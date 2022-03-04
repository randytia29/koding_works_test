import 'package:flutter/material.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/core/preferences/colors.dart';
import 'package:kodingworkstest/features/home/presentation/widgets/koding_works_text_form.dart';
import 'package:kodingworkstest/features/home/presentation/widgets/location_market.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConfig.widthScreen(context),
      height: 200,
      padding: EdgeInsets.symmetric(
          horizontal: AppConfig.paddingHorizontal,
          vertical: AppConfig.paddingVertical),
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Kamu berbelanja di'),
          const SizedBox(
            height: 10,
          ),
          const LocationMarket(),
          const SizedBox(
            height: 10,
          ),
          KodingWorksTextForm(searchController: searchController)
        ],
      ),
    );
  }
}
