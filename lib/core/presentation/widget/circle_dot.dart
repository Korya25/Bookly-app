import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';

class CircleDot extends StatelessWidget {
  const CircleDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.padding6),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.circleDotColor,
        ),
        width: AppDimens.size6,
        height: AppDimens.size6,
      ),
    );
  }
}
