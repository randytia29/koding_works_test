import 'package:kodingworkstest/features/home/data/datasources/banners_remote_data_source.dart';
import 'package:kodingworkstest/features/home/domain/entities/banners.dart';
import 'package:kodingworkstest/features/home/domain/repositories/banners_repository.dart';

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
