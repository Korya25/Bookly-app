import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/features/books/presentation/widget/books_horizontal_section.dart';
import 'package:book_app/features/books/presentation/widget/featured_books_carousel.dart';
import 'package:flutter/material.dart';

class BooksView extends StatelessWidget {
  const BooksView({super.key});

  @override
  Widget build(BuildContext context) {
    // Displays a scrollable view with featured, popular, and newest books sections
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: FeaturedBooksCarousel()),
        SliverToBoxAdapter(
          child: BooksHorizontalSection(type: BooksSectionType.popular),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: AppDimens.bottomNavBarHeightFactor + 60,
            ),
            child: BooksHorizontalSection(type: BooksSectionType.newest),
          ),
        ),
      ],
    );
  }
}
