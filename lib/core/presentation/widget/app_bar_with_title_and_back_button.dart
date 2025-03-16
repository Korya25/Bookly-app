import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/circular_icon_button.dart';
import 'package:flutter/material.dart';

class AppBarWithTitleAndBackButton extends StatelessWidget {
  const AppBarWithTitleAndBackButton({
    super.key,
    required this.title,
    required this.onBackPressed,
    this.icon = Icons.arrow_back_ios_new,
  });

  final String title;
  final VoidCallback onBackPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.padding12,
        horizontal: AppDimens.padding16,
      ),
      child: Row(
        children: [
          // Back Button
          CircularIconButton(onPressed: onBackPressed, icon: icon),

          // Title
          const Spacer(flex: 1),
          Text(title, style: AppTextStyles.font20WhiteW700),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
