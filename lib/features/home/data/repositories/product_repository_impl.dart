import 'package:kodingworkstest/features/home/data/datasources/product_remote_data_source.dart';
import 'package:kodingworkstest/features/home/domain/entities/product.dart';
import 'package:kodingworkstest/features/home/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Product>?> getProduct(
      {required bool isFeatured,
      required int page,
      required String type}) async {
    try {
      final remoteProduct = await remoteDataSource.getProduct(
          isFeatured: isFeatured, page: page, type: type);

      return remoteProduct;
    } catch (e) {
      return null;
    }
  }
}
