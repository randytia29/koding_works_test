import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kodingworkstest/features/home/data/datasources/product_remote_data_source.dart';
import 'package:kodingworkstest/features/home/data/repositories/product_repository_impl.dart';
import 'package:kodingworkstest/features/home/domain/repositories/product_repository.dart';
import 'package:kodingworkstest/features/home/domain/usecases/get_product.dart';
import 'package:kodingworkstest/features/home/presentation/bloc/product_bloc.dart';
import '../core/network/network_info.dart';
import '../features/home/data/datasources/banners_remote_data_source.dart';
import '../features/home/data/datasources/category_remote_data_source.dart';
import '../features/home/data/repositories/banners_repository_impl.dart';
import '../features/home/data/repositories/category_repository_impl.dart';
import '../features/home/domain/repositories/banners_repository.dart';
import '../features/home/domain/repositories/category_repository.dart';
import '../features/home/domain/usecases/get_banners.dart';
import '../features/home/domain/usecases/get_category.dart';
import '../features/home/presentation/bloc/banners_bloc.dart';
import '../features/home/presentation/bloc/category_bloc.dart';

final getIt = GetIt.instance;

void setupLocator() {
  //! Features
  // Bloc
  getIt.registerFactory(() => BannersBloc(banners: getIt()));
  getIt.registerFactory(() => CategoryBloc(category: getIt()));
  getIt.registerFactory(() => ProductBloc(product: getIt()));

  // Use cases
  getIt.registerLazySingleton(() => GetBanners(repository: getIt()));
  getIt.registerLazySingleton(() => GetCategory(repository: getIt()));
  getIt.registerLazySingleton(() => GetProduct(repository: getIt()));

  // Repository
  getIt.registerLazySingleton<BannersRepository>(
      () => BannersRepositoryImpl(remoteDataSource: getIt()));
  getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(remoteDataSource: getIt()));
  getIt.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(remoteDataSource: getIt()));

  // Data sources
  getIt.registerLazySingleton<BannersRemoteDataSource>(
      () => BannersRemoteDataSourceImpl(dio: getIt()));
  getIt.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(dio: getIt()));
  getIt.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(dio: getIt()));

  //! Core
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: getIt()));

  //! External
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
