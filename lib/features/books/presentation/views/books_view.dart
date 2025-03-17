import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/features/books/presentation/widget/books_horizontal_section.dart';
import 'package:book_app/features/books/presentation/widget/featured_books_carousel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          child: BooksHorizontalSection(
            title: AppStrings.popularBooks,
            onTap: () => context.goNamed(AppRoutes.popularBooksRoute),
          ),
        ),
        SliverToBoxAdapter(
          child: BooksHorizontalSection(
            title: AppStrings.newestBooks,
            onTap: () => context.goNamed(AppRoutes.newestBooksRoute),
          ),
        ),
      ],
    );
  }
}
