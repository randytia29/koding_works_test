import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../core/network/network_info.dart';
import '../features/home/data/datasources/banners_remote_data_source.dart';
import '../features/home/data/datasources/categories_remote_data_source.dart';
import '../features/home/data/repositories/banners_repository_impl.dart';
import '../features/home/data/repositories/categories_repository_impl.dart';
import '../features/home/domain/repositories/banners_repository.dart';
import '../features/home/domain/repositories/categories_repository.dart';
import '../features/home/domain/usecases/get_banners.dart';
import '../features/home/domain/usecases/get_categories.dart';
import '../features/home/presentation/bloc/banners_bloc.dart';
import '../features/home/presentation/bloc/categories_bloc.dart';

final getIt = GetIt.instance;

void setupLocator() {
  //! Features
  // Bloc
  getIt.registerFactory(() => BannersBloc(banners: getIt()));
  getIt.registerFactory(() => CategoriesBloc(categories: getIt()));

  // Use cases
  getIt.registerLazySingleton(() => GetBanners(repository: getIt()));
  getIt.registerLazySingleton(() => GetCategories(repository: getIt()));

  // Repository
  getIt.registerLazySingleton<BannersRepository>(
      () => BannersRepositoryImpl(remoteDataSource: getIt()));
  getIt.registerLazySingleton<CategoriesRepository>(
      () => CategoriesRepositoryImpl(remoteDataSource: getIt()));

  // Data sources
  getIt.registerLazySingleton<BannersRemoteDataSource>(
      () => BannersRemoteDataSourceImpl(dio: getIt()));
  getIt.registerLazySingleton<CategoriesRemoteDataSource>(
      () => CategoriesRemoteDataSourceImpl(dio: getIt()));

  //! Core
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: getIt()));

  //! External
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
