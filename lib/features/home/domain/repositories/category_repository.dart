import '../entities/category.dart';

abstract class CategoryRepository {
  Future<List<Category>?> getCategory(
      {required int page, required int perPage, required bool isParent});
}
