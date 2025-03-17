import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/circular_icon_button.dart';
import 'package:flutter/material.dart';

class PreviewButton extends StatelessWidget {
  const PreviewButton({super.key, this.label = 'Preview', this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          Text(label, style: AppTextStyles.bodyMedium),
          SizedBox(width: AppDimens.smallSpacing),
          CircularIconButton(
            containerColor: AppColors.previewContainer,
            onPressed: onPressed ?? () {},
            icon: Icons.play_arrow,
            iconSize: AppDimens.mediumIcon,
          ),
        ],
      ),
    );
  }
}
