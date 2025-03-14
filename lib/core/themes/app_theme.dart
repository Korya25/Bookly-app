import 'package:book_app/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Main colors
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,

    // App bar theme
    appBarTheme: appBarTheme(),

    iconTheme: IconThemeData(size: 26),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(backgroundColor: AppColors.scaffoldBackgroundColor);
}
