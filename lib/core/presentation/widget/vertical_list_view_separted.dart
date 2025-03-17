import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';

class VerticalListViewSeparated extends StatelessWidget {
  const VerticalListViewSeparated({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(AppDimens.smallSpacing),
      physics: const BouncingScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      separatorBuilder:
          (context, index) => SizedBox(height: AppDimens.mediumSpacing),
    );
  }
}
