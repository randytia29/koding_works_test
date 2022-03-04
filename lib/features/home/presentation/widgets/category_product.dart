import 'package:flutter/widgets.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/core/preferences/colors.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({
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
      child: Row(
        children: [Column()],
      ),
    );
  }
}
