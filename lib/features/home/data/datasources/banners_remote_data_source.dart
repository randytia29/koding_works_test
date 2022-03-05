import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:kodingworkstest/core/error/exceptions.dart';
import 'package:kodingworkstest/features/home/data/models/banners_model.dart';

abstract class BannersRemoteDataSource {
  Future<List<BannersModel>> getBanners();
}

class BannersRemoteDataSourceImpl implements BannersRemoteDataSource {
  final Dio dio;

  BannersRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<BannersModel>> getBanners() async {
    final response = await dio.get('api.warung.io/customer/ecommerce/banners',
        options: Options(headers: {
          'x-location-id': '60e466dfa18eb7bde1b4c2bb',
          'x-tenant-id': '60e466dfa18eb7bde1b4c2aa'
        }));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.data);

      return List.from(data['data'])
          .map((e) => BannersModel.fromJson(e))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
