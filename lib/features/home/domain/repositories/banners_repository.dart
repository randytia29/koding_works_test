import 'package:kodingworkstest/features/home/domain/entities/banners.dart';

abstract class BannersRepository {
  Future<List<Banners>?> getBanners();
}
