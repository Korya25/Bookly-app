import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/horizontal_list_view_separated.dart';
import 'package:flutter/material.dart';

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
    final screenSize = MediaQuery.of(context).size;
    return HorizontalListViewSeparated(
      height: screenSize.height * AppDimens.horizontalListHeightFactor,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
