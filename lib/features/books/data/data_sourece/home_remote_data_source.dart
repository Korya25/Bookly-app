import 'package:book_app/core/api_services/api_services.dart';
import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/utils/functions/save_books.dart';
import 'package:book_app/features/books/data/models/book_model/book_model.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> getFeaturedBooks();
  Future<List<BookEntity>> getPopularBooks();
  Future<List<BookEntity>> getNewestBooks();
  Future<List<BookEntity>> getSimilarBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);
  @override
  Future<List<BookEntity>> getFeaturedBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=flutter&filter=paid-ebooks&maxResults=${AppConstants.carouselSliderItemsCount}',
    );
    List<BookEntity> books = getBooksList(data);

    // add featured books to the hive box
    saveBooksData(books, AppConstants.kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> getNewestBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=programming&filter=paid-ebooks&maxResults=10&orderBy=newest',
    );

    List<BookEntity> books = getBooksList(data);
    // add Newest books to the hive box
    saveBooksData(books, AppConstants.kNewestBox);
    return books;
  }

  @override
  Future<List<BookEntity>> getPopularBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=best+programming+books&filter=paid-ebooks&maxResults=10&orderBy=relevance',
    );

    List<BookEntity> books = getBooksList(data);
    // add Popular books to the hive box
    saveBooksData(books, AppConstants.kPopularBox);
    return books;
  }

  @override
  Future<List<BookEntity>> getSimilarBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=programming&filter=paid-ebooks&maxResults=10&orderBy=newest',
    );

    List<BookEntity> books = getBooksList(data);
    // add Similar books to the hive box
    saveBooksData(books, AppConstants.kSimilarBox);
    return books;
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books = [];
  for (var bookMap in data['items']) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
