import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/core/presentation/widget/horizontal_list_view_separated_card.dart';
import 'package:book_app/features/books/presentation/widget/horizontal_books_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum BooksSectionType { popular, newest }

class BooksHorizontalSection extends StatelessWidget {
  const BooksHorizontalSection({
    super.key,
    required this.type,
    this.itemCount = 10,
  });

  final BooksSectionType type;
  final int itemCount;

  String get _title =>
      type == BooksSectionType.popular
          ? AppStrings.popularBooks
          : AppStrings.newestBooks;

  String get _route =>
      type == BooksSectionType.popular
          ? AppRoutes.popularBooksRoute
          : AppRoutes.newestBooksRoute;

  @override
  Widget build(BuildContext context) {
    return HorizontalBooksSection(
      title: _title,
      onTap: () => context.goNamed(_route),
      itemCount: itemCount,
      itemBuilder:
          (context, index) => HorizontalListViewSeparatedCard(
            onTap: () => context.goNamed(AppRoutes.bookDetailsRoute),
            imageUrl:
                'https://aboutmsr.com/wp-content/uploads/2024/06/441-1.jpg',
            title: 'Zamalek is the largest sports club in Egypt',
            rating: '4.5',
          ),
    );
  }
}
