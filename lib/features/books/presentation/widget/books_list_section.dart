import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:book_app/core/presentation/widget/horizontal_list_view_separated.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksListSection extends StatelessWidget {
  const BooksListSection({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.size250.h,
      child: HorizontalListViewSeparated(
        height: AppDimens.size250.h,
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
