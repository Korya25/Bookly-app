import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/books/data/data_sourece/home_remote_data_source.dart';
import 'package:book_app/features/books/data/data_sourece/homo_local_data_source.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:book_app/features/books/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });
  @override
  Future<Either<Failure, List<BookEntity>>> getFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getFeaturedBooks();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.getFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getNewestBooks() async {
    try {
      List<BookEntity> books;

      books = homeLocalDataSource.getNewestBooks();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.getNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getPopularBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getPopularBooks();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.getPopularBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getSimilarBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getSimilarBooks();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.getSimilarBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }
}
