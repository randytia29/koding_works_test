import '../datasources/category_remote_data_source.dart';
import '../../domain/entities/category.dart';
import '../../domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;

  CategoryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Category>?> getCategory(
      {required int page, required int perPage, required bool isParent}) async {
    try {
      final remoteCategory = await remoteDataSource.getCategory(
          page: page, perPage: perPage, isParent: isParent);

      return remoteCategory;
    } catch (e) {
      return null;
    }
  }
}
