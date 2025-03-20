import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;
  FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;
  FeaturedBooksFailure({required this.message});
}
