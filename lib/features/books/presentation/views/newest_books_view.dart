import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/presentation/widget/app_bar_with_title_and_back_button.dart';
import 'package:book_app/core/presentation/widget/sliver_list_books_card.dart';
import 'package:book_app/core/presentation/widget/vertical_list_view_separted.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksView extends StatelessWidget {
  const NewestBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const NewestBooksViewWidget());
  }
}

class NewestBooksViewWidget extends StatelessWidget {
  const NewestBooksViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarWithTitleAndBackButton(
          title: AppStrings.newestBooks,
          onBackPressed: () => Navigator.pop(context),
        ),
        Expanded(
          child: VerticalListViewSeparted(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return VerticalListViewSepartedCard(
                onTap: () {
                  context.pushNamed(AppRoutes.bookDetailsRoute);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
