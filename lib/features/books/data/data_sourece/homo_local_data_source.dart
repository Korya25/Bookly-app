import 'package:book_app/features/books/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> getFeaturedBooks();
  List<BookEntity> getPopularBooks();
  List<BookEntity> getNewestBooks();
  List<BookEntity> getSimilarBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> getFeaturedBooks() {}

  @override
  List<BookEntity> getNewestBooks() {}

  @override
  List<BookEntity> getPopularBooks() {}

  @override
  List<BookEntity> getSimilarBooks() {}
}
