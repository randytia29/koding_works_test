import 'package:dio/dio.dart';
import '../../../../app/config.dart';
import '../../../../core/error/exceptions.dart';
import '../models/categories_model.dart';

abstract class CategoriesRemoteDataSource {
  Future<List<CategoriesModel>> getCategories(
      {required int page, required int perPage, required bool isParent});
}

class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  final Dio dio;

  CategoriesRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<CategoriesModel>> getCategories(
      {required int page, required int perPage, required bool isParent}) async {
    try {
      final response = await dio.get('${AppConfig.baseUrl}/products/categories',
          queryParameters: {
            'page': page,
            'perPage': perPage,
            'isParent': isParent
          },
          options: Options(headers: AppConfig.headersApi));

      if (response.statusCode == 200) {
        return List.from(response.data['data'])
            .map((e) => CategoriesModel.fromJson(e))
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
