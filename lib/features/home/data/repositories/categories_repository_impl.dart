import '../datasources/categories_remote_data_source.dart';
import '../../domain/entities/categories.dart';
import '../../domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource remoteDataSource;

  CategoriesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Categories>?> getCategories(
      {required int page, required int perPage, required bool isParent}) async {
    try {
      final remoteCategories = await remoteDataSource.getCategories(
          page: page, perPage: perPage, isParent: isParent);

      return remoteCategories;
    } catch (e) {
      return null;
    }
  }
}
