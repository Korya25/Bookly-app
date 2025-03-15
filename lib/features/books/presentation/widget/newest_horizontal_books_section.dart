import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/core/presentation/widget/horizontal_list_view_separated_card.dart';
import 'package:book_app/features/books/presentation/widget/horizontal_books_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestHorizontalBooksSection extends StatelessWidget {
  const NewestHorizontalBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalBooksSection(
      title: AppStrings.newestBooks,
      onTap: () => context.goNamed(AppRoutes.newestBooksRoute),
      itemCount: 10,
      itemBuilder: (context, index) {
        return HorizontalListViewSeparatedCard(
          onTap: () {
            context.goNamed(AppRoutes.bookDetailsRoute);
          },
        );
      },
    );
  }
}
