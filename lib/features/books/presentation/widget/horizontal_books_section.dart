import 'package:book_app/features/books/presentation/widget/books_list_section.dart';
import 'package:book_app/features/books/presentation/widget/books_list_header.dart';
import 'package:flutter/material.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: EdgeInsets.symmetric(horizontal: AppDimens.padding10.w),
      child: SizedBox(
        height: AppDimens.size250.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            BooksListHeader(title: title, onTap: onTap),

            // List View Section
            BooksListSection(itemCount: itemCount, itemBuilder: itemBuilder),
          ],
        ),
      ),
    );
  }
}
