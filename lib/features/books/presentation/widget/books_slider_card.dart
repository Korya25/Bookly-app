import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/dot_indicator.dart';
import 'package:book_app/core/presentation/widget/gradient_masked_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksSliderCard extends StatelessWidget {
  const BooksSliderCard({
    super.key,
    required this.currentIndex,
    required this.sectionHeight,
    required this.onTap,
  });

  final int currentIndex;
  final double sectionHeight;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          // Gradient Masked Image
          GradientMaskedImage(
            imageHeight: sectionHeight,
            imageWidth: double.infinity,
            imageUrl:
                'https://c4.wallpaperflare.com/wallpaper/844/472/902/soccer-zamalek-sc-emblem-logo-hd-wallpaper-preview.jpg',
          ),

          // Content
          BooksSliderCardContent(
            height: sectionHeight - AppDimens.size20,
            currentIndex: currentIndex,
          ),
        ],
      ),
    );
  }
}

class BooksSliderCardContent extends StatelessWidget {
  const BooksSliderCardContent({
    super.key,
    required this.height,
    required this.currentIndex,
  });

  final double height;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppDimens.padding16,
        left: AppDimens.padding16,
        bottom: AppDimens.padding10,
      ),
      child: SizedBox(
        height: height.h,
        child: Column(
          spacing: 2.5.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Title
            Text(
              'Zamalek FC',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font18WhiteW800,
            ),
            // Author
            Text(
              'Shikabala',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font14greyW500,
            ),

            // Dot Indicator Section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                AppConstants.carouselSliderItemsCount,
                (indexDot) => DotIndicator(isActive: indexDot == currentIndex),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
