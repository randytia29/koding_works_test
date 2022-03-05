import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/app/locator.dart';
import 'package:kodingworkstest/features/home/presentation/bloc/banners_bloc.dart';
import 'package:kodingworkstest/features/home/presentation/widgets/category_product.dart';
import 'package:kodingworkstest/features/home/presentation/widgets/home_app_bar.dart';
import 'package:kodingworkstest/features/home/presentation/widgets/latest_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bannersBloc = getIt<BannersBloc>();

  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    bannersBloc.add(FetchBanners());
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    bannersBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => bannersBloc,
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
