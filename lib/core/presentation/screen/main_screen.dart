import 'dart:ui';
import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/bottom_nav_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [child, _buildBlurredBottomNavBar(context)]),
      ),
    );
  }

  Widget _buildBlurredBottomNavBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppDimens.padding24.h),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius50.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              height: AppDimens.size50.h,
              width: AppDimens.size250.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.borderRadius50.r),
                color: AppColors.bottomNavBarColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.padding16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: BottomNavIcons.getIcons(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
