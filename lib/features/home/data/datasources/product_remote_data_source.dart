import 'package:dio/dio.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/core/error/exceptions.dart';
import 'package:kodingworkstest/features/home/data/models/product_model.dart';
import 'package:kodingworkstest/features/home/domain/entities/product.dart';

abstract class ProductRemoteDataSource {
  Future<List<Product>> getProduct(
      {required bool isFeatured, required int page, required String type});
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<Product>> getProduct(
      {required bool isFeatured,
      required int page,
      required String type}) async {
    try {
      final response = await dio.get('${AppConfig.baseUrl}/products',
          queryParameters: {
            'isFeatured': isFeatured,
            'page': page,
            'type': type
          },
          options: Options(headers: AppConfig.headersApi));

      if (response.statusCode == 200) {
        return List.from(response.data['data'])
            .map((e) => ProductModel.fromJson(e))
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
