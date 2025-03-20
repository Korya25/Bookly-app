import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract class PopularBooksState {}

class PopularBooksIntial extends PopularBooksState {}

class PopularBooksLoading extends PopularBooksState {}

class PopularBooksSuccess extends PopularBooksState {
  final List<BookEntity> books;
  PopularBooksSuccess({required this.books});
}

class PopularBooksFailure extends PopularBooksState {
  final String message;
  PopularBooksFailure({required this.message});
}
