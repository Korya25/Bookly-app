import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconSize = AppDimens.mediumIcon,
    this.iconColor = AppColors.iconPrimary,
    this.containerColor = AppColors.iconContainer,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final double iconSize;
  final Color iconColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    // A reusable circular button with an icon
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(AppDimens.smallSpacing),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: containerColor,
        ),
        child: Icon(icon, color: iconColor, size: iconSize),
      ),
    );
  }
}
