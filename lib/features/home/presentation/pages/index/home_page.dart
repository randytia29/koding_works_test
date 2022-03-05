import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../app/config.dart';
import '../../../../../app/locator.dart';
import '../../bloc/banners_bloc.dart';
import '../../bloc/categories_bloc.dart';
import '../../widgets/category_product.dart';
import '../../widgets/home_app_bar.dart';
import '../../widgets/latest_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bannersBloc = getIt<BannersBloc>();
  final categoriesBloc = getIt<CategoriesBloc>();

  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    bannersBloc.add(FetchBanners());
    categoriesBloc.add(FetchCategories());
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    bannersBloc.close();
    categoriesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => bannersBloc,
          ),
          BlocProvider(
            create: (context) => categoriesBloc,
          )
        ],
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: AppConfig.heightHomeAppBar + 10),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    LatestInfo(),
                    SizedBox(
                      height: 10,
                    ),
                    CategoryProduct()
                  ],
                ),
              ),
            ),
            HomeAppBar(searchController: searchController)
          ],
        ),
      ),
    );
  }
}
