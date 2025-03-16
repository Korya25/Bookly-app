import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/circular_icon_button.dart';
import 'package:flutter/material.dart';

class PreviewButton extends StatelessWidget {
  const PreviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add functionality for preview button
      },
      child: Row(
        children: [
          Text('Preview', style: AppTextStyles.font14greyW500),
          const SizedBox(width: 5),
          CircularIconButton(
            containerColor: AppColors.previewContinerColor,
            onPressed: () {},
            icon: Icons.play_arrow,
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
