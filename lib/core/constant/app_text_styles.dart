import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Heading Styles
  static const TextStyle headingExtraLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headingLarge = TextStyle(
    fontSize: AppDimens.size20,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle headingMedium = TextStyle(
    fontSize: AppDimens.size18,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
    letterSpacing: 0.8,
  );

  static const TextStyle headingSmall = TextStyle(
    fontSize: AppDimens.size16,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  // Body Styles
  static const TextStyle bodyLarge = TextStyle(
    fontSize: AppDimens.size14,
    fontWeight: FontWeight.w900,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: AppDimens.size14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: AppDimens.size12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    letterSpacing: 0.8,
  );

  // Caption Styles
  static const TextStyle caption = TextStyle(
    fontSize: AppDimens.size12,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );

  // Specialty Styles
  static const TextStyle seeAll = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.seeAllIcon,
  );
}
