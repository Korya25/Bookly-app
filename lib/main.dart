import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/router/app_router.dart';
import 'package:book_app/core/themes/app_theme.dart';
import 'package:book_app/core/utils/functions/setup_services_locator.dart';
import 'package:book_app/core/utils/functions/simple_bloc_observer.dart';
import 'package:book_app/features/books/data/repo/home_repo_impl.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:book_app/features/books/domain/use_case/fetch_featured_books_usecase.dart';
import 'package:book_app/features/books/domain/use_case/fetch_newest_books_use_case.dart';
import 'package:book_app/features/books/domain/use_case/fetch_popular_books_use_case.dart';
import 'package:book_app/features/books/domain/use_case/fetch_similar_books_use_case.dart';
import 'package:book_app/features/books/presentation/controller/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_app/features/books/presentation/controller/newest_books_cubit/newest_book_cubit.dart';
import 'package:book_app/features/books/presentation/controller/popular_books_cubit.dart/popular_books_cubit.dart';
import 'package:book_app/features/books/presentation/controller/similar_book_cubit/similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServicesLocator();
  await Hive.openBox(AppConstants.kFeaturedBox);
  await Hive.openBox(AppConstants.kPopularBox);
  await Hive.openBox(AppConstants.kNewestBox);
  await Hive.openBox(AppConstants.kSimilarBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUsecase(homeRepo: getIt.get<HomeRepoImpl>()),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return PopularBooksCubit(
              FetchPopularBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return SimilarBookCubit(
              FetchSimilarBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
