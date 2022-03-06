import 'package:kodingworkstest/features/home/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>?> getProduct(
      {required bool isFeatured, required int page, required String type});
}
