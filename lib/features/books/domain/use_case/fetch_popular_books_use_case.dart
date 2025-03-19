import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/use_case/use_cases.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:book_app/features/books/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchPopularBooksUseCase extends UseCase<List<BookEntity>, NoParm> {
  final HomeRepo homeRepo;

  FetchPopularBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParm? Param]) async {
    return await homeRepo.getPopularBooks();
  }
}
