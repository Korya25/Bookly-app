import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/vertical_list_view_separated_card.dart';
import 'package:book_app/core/presentation/widget/vertical_list_view_separted.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopularBooksView extends StatelessWidget {
  const PopularBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        title: Text(
          AppStrings.popularBooks,
          style: AppTextStyles.font20WhiteW700,
        ),
      ),
      body: const PopularBooksWidget(),
    );
  }
}

class PopularBooksWidget extends StatelessWidget {
  const PopularBooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalListViewSeparted(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return VerticalListViewSepartedCard(
          onTap: () {
            context.pushNamed(AppRoutes.bookDetailsRoute);
          },
        );
      },
    );
  }
}
