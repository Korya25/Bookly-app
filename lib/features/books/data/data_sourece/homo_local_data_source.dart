import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> getFeaturedBooks();
  List<BookEntity> getPopularBooks();
  List<BookEntity> getNewestBooks();
  List<BookEntity> getSimilarBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> getFeaturedBooks() {
    var box = Hive.box<BookEntity>(AppConstants.kFeaturedBox);

    return box.values.toList();
  }

  @override
  List<BookEntity> getNewestBooks() {
    var box = Hive.box<BookEntity>(AppConstants.kNewestBox);

    return box.values.toList();
  }

  @override
  List<BookEntity> getPopularBooks() {
    var box = Hive.box<BookEntity>(AppConstants.kPopularBox);

    return box.values.toList();
  }

  @override
  List<BookEntity> getSimilarBooks() {
    var box = Hive.box<BookEntity>(AppConstants.kSimilarBox);

    return box.values.toList();
  }
}
