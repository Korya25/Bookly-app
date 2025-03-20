import 'package:book_app/features/books/domain/use_case/fetch_featured_books_usecase.dart';
import 'package:book_app/features/books/presentation/controller/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUsecase)
    : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUsecase fetchFeaturedBooksUsecase;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await fetchFeaturedBooksUsecase.call();

    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(message: failure.message));
      },
      (books) {
        emit(FeaturedBooksSuccess(books: books));
      },
    );
  }
}
