import 'dart:ui';
import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/bottom_nav_icons.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [child, _buildBottomNavBar(context)]),
      ),
    );
  }

  // Builds a blurred bottom navigation bar with icons
  Widget _buildBottomNavBar(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: AppDimens.bottomNavBarPaddingFactor),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.extraLargeRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              height: screenSize.height * AppDimens.bottomNavBarHeightFactor,
              width: screenSize.width * AppDimens.bottomNavBarWidthFactor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.extraLargeRadius),
                color: AppColors.bottomNavBarBackground,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.extraLargeSpacing,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: BottomNavIcons.buildBottomNavIcons(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
