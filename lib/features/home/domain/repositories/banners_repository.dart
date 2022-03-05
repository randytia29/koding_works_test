import '../entities/banners.dart';

abstract class BannersRepository {
  Future<List<Banners>?> getBanners();
}
