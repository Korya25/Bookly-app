import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/constant/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksListHeader extends StatelessWidget {
  const BooksListHeader({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.font18WhiteW800),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                AppStrings.buttonSeeAll,
                style: AppTextStyles.font12greyW500,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: AppDimens.size14.r,
                color: AppColors.seeAllIcon,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
