import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/presentation/widget/app_bar_with_title_and_back_button.dart';
import 'package:book_app/core/presentation/widget/sliver_list_books_card.dart';
import 'package:book_app/core/presentation/widget/vertical_list_view_separted.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum BooksListType { popular, newest }

class BooksListView extends StatelessWidget {
  const BooksListView({super.key, required this.type});

  final BooksListType type;

  String get _title =>
      type == BooksListType.popular
          ? AppStrings.popularBooks
          : AppStrings.newestBooks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWithTitleAndBackButton(
            title: _title,
            onBackPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: VerticalListViewSeparated(
              itemCount: 10,
              itemBuilder:
                  (context, index) => VerticalListViewSeparatedCard(
                    onTap: () => context.pushNamed(AppRoutes.bookDetailsRoute),
                    imageUrl:
                        'https://aboutmsr.com/wp-content/uploads/2024/06/441-1.jpg',
                    title: 'Zamalek is the largest sports club in Egypt',
                    year: '1911',
                    rating: '5',
                    description:
                        'Zamalek is the largest sports club in Egypt, and the most successful club in Egypt.',
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
