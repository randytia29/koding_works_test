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
    try {
      final response =
          await dio.get('https://api.warung.io/customer/ecommerce/banners',
              options: Options(headers: {
                'x-location-id': '60e466dfa18eb7bde1b4c2bb',
                'x-tenant-id': '60e466dfa18eb7bde1b4c2aa'
              }));

      if (response.statusCode == 200) {
        return List.from(response.data['data'])
            .map((e) => BannersModel.fromJson(e))
            .toList();
      } else {
        throw ServerException();
      }
    } on DioError catch (e) {
      print('Dio Error: $e');
      throw ServerException();
    }
  }
}
