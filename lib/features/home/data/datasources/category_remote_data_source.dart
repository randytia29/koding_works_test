import 'package:dio/dio.dart';
import '../../../../app/config.dart';
import '../../../../core/error/exceptions.dart';
import '../models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getCategory(
      {required int page, required int perPage, required bool isParent});
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final Dio dio;

  CategoryRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<CategoryModel>> getCategory(
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
            .map((e) => CategoryModel.fromJson(e))
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
