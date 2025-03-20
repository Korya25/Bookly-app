import 'package:book_app/core/api_services/api_services.dart';
import 'package:book_app/features/books/data/data_sourece/home_remote_data_source.dart';
import 'package:book_app/features/books/data/data_sourece/homo_local_data_source.dart';
import 'package:book_app/features/books/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiServices>()),
    ),
  );
}
