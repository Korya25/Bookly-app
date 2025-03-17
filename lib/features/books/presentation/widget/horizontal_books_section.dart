import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/features/books/presentation/widget/books_list_section.dart';
import 'package:book_app/features/books/presentation/widget/books_list_header.dart';
import 'package:flutter/material.dart';

class HorizontalBooksSection extends StatelessWidget {
  const HorizontalBooksSection({
    super.key,
    required this.title,
    required this.onTap,
    required this.itemCount,
    required this.itemBuilder,
  });

  final String title;
  final VoidCallback onTap;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimens.smallSpacing),
      child: Column(
        spacing: AppDimens.tinySpacing,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BooksListHeader(title: title, onTap: onTap),
          BooksListSection(itemCount: itemCount, itemBuilder: itemBuilder),
        ],
      ),
    );
  }
}
