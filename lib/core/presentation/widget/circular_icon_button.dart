import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconSize = AppDimens.size20,
    this.iconColor = AppColors.iconPrimary,
    this.containerColor = AppColors.iconContainerColor,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final double iconSize;
  final Color iconColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(AppDimens.padding8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: containerColor,
        ),
        child: Icon(icon, color: iconColor, size: iconSize),
      ),
    );
  }
}
