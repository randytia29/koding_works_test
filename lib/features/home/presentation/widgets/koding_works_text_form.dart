import 'package:flutter/material.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/core/preferences/colors.dart';

class KodingWorksTextForm extends StatelessWidget {
  const KodingWorksTextForm({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        fillColor: AppColors.greyColor,
        filled: true,
        hintText: 'Cari produk',
        enabledBorder: AppConfig.searchInputBorder,
        errorBorder: AppConfig.searchInputBorder,
        focusedBorder: AppConfig.searchInputBorder,
        disabledBorder: AppConfig.searchInputBorder,
        border: AppConfig.searchInputBorder,
      ),
      validator: (value) {
        return '';
      },
    );
  }
}
