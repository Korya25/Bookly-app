import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/books/data/data_sourece/home_remote_data_source.dart';
import 'package:book_app/features/books/data/data_sourece/homo_local_data_source.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:book_app/features/books/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

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
      var booksList = homeLocalDataSource.getFeaturedBooks();

      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.getFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getNewestBooks() async {
    try {
      var booksList = homeLocalDataSource.getNewestBooks();

      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.getNewestBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getPopularBooks() async {
    try {
      var booksList = homeLocalDataSource.getPopularBooks();

      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.getPopularBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getSimilarBooks() async {
    try {
      var booksList = homeLocalDataSource.getSimilarBooks();

      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.getSimilarBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }
}
