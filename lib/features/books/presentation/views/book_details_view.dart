import 'package:book_app/features/books/presentation/widget/book_details_card.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    // Displays detailed information about a selected book
    return Scaffold(body: BookDetailsCard());
  }
}
