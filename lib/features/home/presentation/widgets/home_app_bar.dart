import 'package:flutter/material.dart';
import '../../../../app/config.dart';
import '../../../../core/preferences/colors.dart';
import 'koding_works_text_form.dart';
import 'location_market.dart';

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
      height: AppConfig.heightHomeAppBar,
      decoration: const BoxDecoration(color: AppColors.whiteColor, boxShadow: [
        BoxShadow(color: AppColors.greyColor, blurRadius: 2, spreadRadius: 2)
      ]),
      padding: EdgeInsets.symmetric(
          horizontal: AppConfig.paddingHorizontal,
          vertical: AppConfig.paddingVertical),
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
