import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app/config.dart';
import '../../../../core/preferences/colors.dart';
import '../bloc/categories_bloc.dart';
import 'categories_card.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      height: 150,
      width: AppConfig.widthScreen(context),
      padding: EdgeInsets.symmetric(
          horizontal: AppConfig.paddingHorizontal,
          vertical: AppConfig.paddingVertical),
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, categoriesState) {
          if (categoriesState is CategoriesLoading) {
            return AppConfig.loadingKodingWorks;
          }

          if (categoriesState is CategoriesLoaded) {
            final categories = categoriesState.categories;

            return Wrap(
                spacing: 15,
                children: categories
                    .map((e) => CategoriesCard(
                          categories: e,
                        ))
                    .toList());
          }
          return Container();
        },
      ),
    );
  }
}
