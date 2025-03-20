import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract class SimilarBookState {}

class SimilarBooksInitial extends SimilarBookState {}

class SimilarBooksLoading extends SimilarBookState {}

class SimilarBooksSuccess extends SimilarBookState {
  final List<BookEntity> books;
  SimilarBooksSuccess({required this.books});
}

class SimilarBooksFailure extends SimilarBookState {
  final String message;
  SimilarBooksFailure({required this.message});
}
