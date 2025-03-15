import 'package:book_app/features/books/presentation/widget/books_slider_section.dart';
import 'package:book_app/features/books/presentation/widget/newest_horizontal_books_section.dart';
import 'package:book_app/features/books/presentation/widget/popular_horizontal_books_section.dart';
import 'package:flutter/material.dart';

class BooksView extends StatelessWidget {
  const BooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BooksViewWidget();
  }
}

class BooksViewWidget extends StatelessWidget {
  const BooksViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        // Slider Section
        SliverToBoxAdapter(child: BooksSliderSection()),

        // Popular Horizontal Books Section
        SliverToBoxAdapter(child: PopularHorizontalBooksSection()),

        // Newest Horizontal Books Section
        SliverToBoxAdapter(child: NewestHorizontalBooksSection()),
      ],
    );
  }
}
