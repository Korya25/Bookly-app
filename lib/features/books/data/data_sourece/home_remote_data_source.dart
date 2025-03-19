import 'package:book_app/features/books/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> getFeaturedBooks();
  Future<List<BookEntity>> getPopularBooks();
  Future<List<BookEntity>> getNewestBooks();
  Future<List<BookEntity>> getSimilarBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> getFeaturedBooks() {
    // TODO: implement getFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> getNewestBooks() {
    // TODO: implement getNewestBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> getPopularBooks() {
    // TODO: implement getPopularBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> getSimilarBooks() {
    // TODO: implement getSimilarBooks
    throw UnimplementedError();
  }
}
