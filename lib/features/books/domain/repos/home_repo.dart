import 'package:book_app/features/books/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> getFeaturedBooks();
  Future<List<BookEntity>> getNewestBooks();
  Future<List<BookEntity>> getPopularBooks();
}
