import 'package:dio/dio.dart';
import '../../../../app/config.dart';
import '../../../../core/error/exceptions.dart';
import '../models/banners_model.dart';

abstract class BannersRemoteDataSource {
  Future<List<BannersModel>> getBanners();
}

class BannersRemoteDataSourceImpl implements BannersRemoteDataSource {
  final Dio dio;

  BannersRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<BannersModel>> getBanners() async {
    try {
      final response = await dio.get('${AppConfig.baseUrl}/banners',
          options: Options(headers: AppConfig.headersApi));

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
