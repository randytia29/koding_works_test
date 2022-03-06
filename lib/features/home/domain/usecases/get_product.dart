import 'package:equatable/equatable.dart';
import 'package:kodingworkstest/core/usecases/usecase.dart';
import 'package:kodingworkstest/features/home/domain/entities/product.dart';
import 'package:kodingworkstest/features/home/domain/repositories/product_repository.dart';

class GetProduct implements Usecase<List<Product>, Params> {
  final ProductRepository repository;

  GetProduct({required this.repository});

  @override
  Future<List<Product>?> call(Params params) async {
    return await repository.getProduct(
        isFeatured: params.isFeatured, page: params.page, type: params.type);
  }
}

class Params extends Equatable {
  final bool isFeatured;
  final int page;
  final String type;

  const Params(
      {this.isFeatured = true, this.page = 1, this.type = 'PHYSICAL,DIGITAL'});

  @override
  List<Object?> get props => [isFeatured, page, type];
}
