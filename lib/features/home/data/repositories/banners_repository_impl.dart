import '../datasources/banners_remote_data_source.dart';
import '../../domain/entities/banners.dart';
import '../../domain/repositories/banners_repository.dart';

class BannersRepositoryImpl implements BannersRepository {
  final BannersRemoteDataSource remoteDataSource;

  BannersRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Banners>?> getBanners() async {
    try {
      final remoteBanners = await remoteDataSource.getBanners();

      return remoteBanners;
    } catch (e) {
      return null;
    }
  }
}
