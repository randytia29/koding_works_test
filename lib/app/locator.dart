import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kodingworkstest/core/network/network_info.dart';
import 'package:kodingworkstest/features/home/data/datasources/banners_remote_data_source.dart';
import 'package:kodingworkstest/features/home/data/repositories/banners_repository_impl.dart';
import 'package:kodingworkstest/features/home/domain/repositories/banners_repository.dart';
import 'package:kodingworkstest/features/home/domain/usecases/get_banners.dart';

final getIt = GetIt.instance;

void setupLocator() {
  //! Features
  // Bloc

  // Use cases
  getIt.registerLazySingleton(() => GetBanners(repository: getIt()));

  // Repository
  getIt.registerLazySingleton<BannersRepository>(
      () => BannersRepositoryImpl(remoteDataSource: getIt()));

  // Data sources
  getIt.registerLazySingleton<BannersRemoteDataSource>(
      () => BannersRemoteDataSourceImpl(dio: getIt()));

  //! Core
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: getIt()));

  //! External
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
