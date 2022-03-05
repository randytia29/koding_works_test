import 'package:equatable/equatable.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/categories.dart';
import '../repositories/categories_repository.dart';

class GetCategories implements Usecase<List<Categories>, Params> {
  final CategoriesRepository repository;

  GetCategories({required this.repository});

  @override
  Future<List<Categories>?> call(Params params) async {
    return await repository.getCategories(
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
