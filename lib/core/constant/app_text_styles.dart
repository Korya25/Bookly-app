import 'package:book_app/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Headings
  static const TextStyle font32WhiteW800 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold, // W800 is equivalent to FontWeight.bold
    color: AppColors.textPrimary,
  );

  static const TextStyle font24WhiteW800 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Body Text
  static const TextStyle font16WhiteW400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal, // W400 is equivalent to FontWeight.normal
    color: AppColors.textPrimary,
  );

  static const TextStyle font14GreyW400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  // Buttons
  static const TextStyle font16WhiteW800 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Captions
  static const TextStyle font12GreyW400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
}
