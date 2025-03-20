import 'package:book_app/features/books/domain/use_case/fetch_popular_books_use_case.dart';
import 'package:book_app/features/books/presentation/controller/popular_books_cubit.dart/popular_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularBooksCubit extends Cubit<PopularBooksState> {
  PopularBooksCubit(this.fetchPopularBooksUseCase)
    : super(PopularBooksIntial());

  final FetchPopularBooksUseCase fetchPopularBooksUseCase;

  Future<void> getFeaturedBooks() async {
    emit(PopularBooksLoading());

    var result = await fetchPopularBooksUseCase.call();

    result.fold(
      (failure) {
        emit(PopularBooksFailure(message: failure.message));
      },
      (books) {
        emit(PopularBooksSuccess(books: books));
      },
    );
  }
}
