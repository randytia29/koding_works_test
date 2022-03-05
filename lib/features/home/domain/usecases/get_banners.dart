import 'package:equatable/equatable.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/banners.dart';
import '../repositories/banners_repository.dart';

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
