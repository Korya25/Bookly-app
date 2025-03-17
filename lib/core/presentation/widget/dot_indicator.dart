import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: AppDimens.largeSpacing),
      width: isActive ? AppDimens.size30 : AppDimens.size5,
      height: AppDimens.size5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color:
            isActive
                ? AppColors.dotIndicatorActive
                : AppColors.dotIndicatorInactive,
      ),
    );
  }
}
