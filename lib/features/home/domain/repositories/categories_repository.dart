import '../entities/categories.dart';

abstract class CategoriesRepository {
  Future<List<Categories>?> getCategories(
      {required int page, required int perPage, required bool isParent});
}
