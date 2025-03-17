import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/dot_indicator.dart';
import 'package:book_app/core/presentation/widget/gradient_masked_image.dart';
import 'package:flutter/material.dart';

class BooksSliderCard extends StatelessWidget {
  const BooksSliderCard({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          GradientMaskedImage(
            imageUrl:
                'https://aboutmsr.com/wp-content/uploads/2024/06/441-1.jpg',
          ),
          BooksSliderCardOverlay(currentIndex: currentIndex),
        ],
      ),
    );
  }
}

class BooksSliderCardOverlay extends StatelessWidget {
  const BooksSliderCardOverlay({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        right: AppDimens.xxxLargeSpacing,
        left: AppDimens.xxxLargeSpacing,
        bottom: AppDimens.largeSpacing,
      ),
      child: SizedBox(
        height: screenSize.height * AppDimens.sliderCardHeightFactor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Zamalek FC', // يمكن جعلها ديناميكية لاحقًا
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.headingMedium,
            ),
            Text(
              'Shikabala', // يمكن جعلها ديناميكية لاحقًا
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyMedium,
            ),
            SizedBox(height: AppDimens.size10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                AppConstants.carouselSliderItemsCount,
                (index) => DotIndicator(isActive: index == currentIndex),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
