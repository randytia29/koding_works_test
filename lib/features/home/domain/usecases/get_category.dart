import 'package:equatable/equatable.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/category.dart';
import '../repositories/category_repository.dart';

class GetCategory implements Usecase<List<Category>, Params> {
  final CategoryRepository repository;

  GetCategory({required this.repository});

  @override
  Future<List<Category>?> call(Params params) async {
    return await repository.getCategory(
        page: params.page, perPage: params.perPage, isParent: params.isParent);
  }
}

class Params extends Equatable {
  final int page;
  final int perPage;
  final bool isParent;

  const Params({this.page = 1, this.perPage = 100, this.isParent = true});

  @override
  List<Object?> get props => [page, perPage, isParent];
}
