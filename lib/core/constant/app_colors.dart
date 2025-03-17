import 'package:flutter/material.dart';

class AppColors {
  // Core UI Colors
  static const Color primary = Color(0xFF100B20);
  static const Color scaffoldBackground = Color(0xFF100B20);
  static const Color accent = Color(0xFFFFC107);

  // Navigation Colors
  static const Color appBarIcon = Colors.white;
  static const Color bottomNavBarBackground = Color.fromARGB(67, 158, 158, 158);
  static const Color bottomNavBarIconFocused = Colors.red;
  static const Color bottomNavBarIconUnfocused = Colors.grey;

  // Text Colors
  static const Color textPrimary = Colors.white;
  static const Color textSecondary =
      Colors.grey; // Used for secondary text, icons, etc.

  // Button Colors
  static const Color buttonPrimary = Color(0xFF6200EE);
  static const Color buttonSecondary = Color(0xFF03DAC6);

  // Icon Colors
  static const Color iconPrimary = Colors.white;
  static const Color iconSecondary = textSecondary; // Reused from textSecondary
  static const Color iconContainer = Color(0xB2272830);
  static const Color seeAllIcon = textSecondary; // Reused from textSecondary
  static const Color ratingIcon = Color(0xFFFFC107);
  static const Color previewContainer = Colors.red;

  // Indicator Colors
  static const Color circleDot = Color(0x33FFFFFF);
  static const Color dotIndicatorActive = Color(0xFFB00020);
  static const Color dotIndicatorInactive = Color(0x26FFFFFF);

  // Status Colors
  static const Color error = Color(0xFFB00020);
  static const Color success = Color(0xFF4CAF50);

  // Card Colors
  static const Color cardBackground = Color.fromARGB(255, 20, 14, 41);
}
