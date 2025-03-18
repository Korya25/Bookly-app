import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:book_app/features/books/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUsecase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUsecase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    // check permissions
    return homeRepo.getFeaturedBooks();
  }
}
