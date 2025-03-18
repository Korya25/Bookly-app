import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> getFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> getPopularBooks();
  Future<Either<Failure, List<BookEntity>>> getNewestBooks();
}
