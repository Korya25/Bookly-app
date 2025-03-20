import 'package:book_app/features/books/domain/use_case/fetch_similar_books_use_case.dart';
import 'package:book_app/features/books/presentation/controller/similar_book_cubit/similar_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.fetchSimilarBooksUseCase)
    : super(SimilarBooksInitial());

  final FetchSimilarBooksUseCase fetchSimilarBooksUseCase;

  Future<void> getSimilarBooks() async {
    emit(SimilarBooksLoading());

    var result = await fetchSimilarBooksUseCase.call();

    result.fold(
      (failure) {
        emit(SimilarBooksFailure(message: failure.message));
      },
      (books) {
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
