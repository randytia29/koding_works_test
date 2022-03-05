import 'package:equatable/equatable.dart';
import 'package:kodingworkstest/core/usecases/usecase.dart';
import 'package:kodingworkstest/features/home/domain/entities/banners.dart';
import 'package:kodingworkstest/features/home/domain/repositories/banners_repository.dart';

class GetBanners implements Usecase<List<Banners>, Params> {
  final BannersRepository repository;

  GetBanners({required this.repository});

  @override
  Future<List<Banners>?> call(Params params) async {
    return await repository.getBanners();
  }
}

class Params extends Equatable {
  @override
  List<Object?> get props => [];
}
