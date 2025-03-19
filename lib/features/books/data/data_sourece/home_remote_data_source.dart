import 'package:book_app/core/api_services/api_services.dart';
import 'package:book_app/core/constant/app_constant.dart';
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
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> getNewestBooks() {
    apiServices.get(endPoint: endPoint);
  }

  @override
  Future<List<BookEntity>> getPopularBooks() {
    apiServices.get(endPoint: endPoint);
  }

  @override
  Future<List<BookEntity>> getSimilarBooks() {
    apiServices.get(endPoint: endPoint);
  }
}
