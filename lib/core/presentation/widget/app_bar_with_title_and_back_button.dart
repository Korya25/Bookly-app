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
      padding: EdgeInsets.symmetric(
        vertical: AppDimens.mediumSpacing,
        horizontal: AppDimens.largeSpacing,
      ),
      child: Row(
        children: [
          CircularIconButton(onPressed: onBackPressed, icon: icon),
          SizedBox(width: AppDimens.mediumSpacing),
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.headingLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
