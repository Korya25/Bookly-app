import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';

class HorizontalListViewSeparated extends StatelessWidget {
  const HorizontalListViewSeparated({
    super.key,
    required this.height,
    required this.itemCount,
    required this.itemBuilder,
  });

  final double height;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: itemBuilder,
        separatorBuilder:
            (context, index) => SizedBox(width: AppDimens.mediumSpacing),
      ),
    );
  }
}
