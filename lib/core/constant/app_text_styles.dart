import 'package:book_app/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Headings
  static const TextStyle font32WhiteW800 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle font18WhiteW800 = TextStyle(
    letterSpacing: 0.8,
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );

  static const TextStyle font14greyW500 = TextStyle(
    letterSpacing: 0.8,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
}
