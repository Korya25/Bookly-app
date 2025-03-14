import 'package:book_app/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Main colors
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,

    // App bar theme
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(backgroundColor: AppColors.scaffoldBackgroundColor);
}
