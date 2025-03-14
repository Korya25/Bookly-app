import 'package:book_app/features/books/presentation/widget/books_slider_section.dart';
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
        // Popular Books Section

        // Newest Books Section
      ],
    );
  }
}
