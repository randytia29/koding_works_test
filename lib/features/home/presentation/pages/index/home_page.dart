import 'package:flutter/material.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/features/home/presentation/widgets/home_app_bar.dart';
import 'package:kodingworkstest/features/home/presentation/widgets/latest_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: AppConfig.heightHomeAppBar + 10),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  LatestInfo(),
                ],
              ),
            ),
          ),
          HomeAppBar(searchController: searchController)
        ],
      ),
    );
  }
}
