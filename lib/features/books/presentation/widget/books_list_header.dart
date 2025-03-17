import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/constant/app_strings.dart';
import 'package:flutter/material.dart';

class BooksListHeader extends StatelessWidget {
  const BooksListHeader({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.headingLarge),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Text(AppStrings.buttonSeeAll, style: AppTextStyles.seeAll),
              Icon(
                Icons.arrow_forward_ios,
                size: AppDimens.size14,
                color: AppColors.seeAllIcon,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
