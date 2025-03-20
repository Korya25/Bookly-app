import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract class NewestBookState {}

class NewestBooksInitial extends NewestBookState {}

class NewestBooksLoading extends NewestBookState {}

class NewestBooksSuccess extends NewestBookState {
  final List<BookEntity> books;
  NewestBooksSuccess({required this.books});
}

class NewestBooksFailure extends NewestBookState {
  final String message;
  NewestBooksFailure({required this.message});
}
