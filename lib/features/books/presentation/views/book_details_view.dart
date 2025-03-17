import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/features/books/presentation/widget/book_author_section.dart';
import 'package:book_app/features/books/presentation/widget/book_summary_section.dart';
import 'package:book_app/features/books/presentation/widget/book_details_card.dart';
import 'package:book_app/features/books/presentation/widget/books_horizontal_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, this.bookId});

  final String? bookId;

  @override
  Widget build(BuildContext context) {
    // Displays detailed information about a selected book
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: BookDetailsCard()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: BookSummarySection(
              summary:
                  "The former Rangers and Scotland coach... ${bookId ?? ''}",
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(child: BookAuthorsSection()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: BooksHorizontalSection(
              title: AppStrings.similarBooks,
              onTap: () => context.goNamed(AppRoutes.similarBooksRoute),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
