import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/circle_dot.dart';
import 'package:book_app/features/books/presentation/widget/preview_button.dart';
import 'package:flutter/material.dart';

class BookDetailsContent extends StatelessWidget {
  const BookDetailsContent({
    super.key,
    required this.title,
    required this.year,
    required this.catogray,
    required this.rating,
    required this.ratingCount,
    required this.pageCount,
  });

  final String title;
  final String year;
  final String catogray;
  final String rating;
  final String ratingCount;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        right: AppDimens.largeSpacing,
        left: AppDimens.largeSpacing,
        bottom: AppDimens.mediumSpacing,
      ),
      child: SizedBox(
        height: screenSize.height * AppDimens.sliderImageHeightFactor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.headingMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: AppDimens.smallSpacing,
                    ),
                    child: Row(
                      children: [
                        Text(year, style: AppTextStyles.bodySmall),
                        CircleDot(),
                        Text('$pageCount', style: AppTextStyles.bodySmall),
                        CircleDot(),
                        Text(catogray, style: AppTextStyles.bodySmall),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: AppColors.ratingIcon,
                        size: AppDimens.mediumIcon,
                      ),
                      Text(rating, style: AppTextStyles.bodyLarge),
                      Text('($ratingCount)', style: AppTextStyles.bodySmall),
                    ],
                  ),
                ],
              ),
            ),
            PreviewButton(),
          ],
        ),
      ),
    );
  }
}
