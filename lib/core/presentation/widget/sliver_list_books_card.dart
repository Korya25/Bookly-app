import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';

class VerticalListViewSeparatedCard extends StatelessWidget {
  const VerticalListViewSeparatedCard({
    super.key,
    required this.onTap,
    required this.imageUrl,
    required this.title,
    required this.year,
    required this.rating,
    required this.description,
  });

  final VoidCallback? onTap;
  final String imageUrl;
  final String title;
  final String year;
  final String rating;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppDimens.largeCardHeight,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(AppDimens.smallRadius),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(AppDimens.smallSpacing),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.smallRadius),
                child: CachedImageWithShimmer(
                  imageUrl: imageUrl,
                  imageHeight: double.infinity,
                  imageWidth: AppDimens.smallImageWidth,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.mediumSpacing,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.headingSmall,
                    ),
                    SizedBox(height: AppDimens.smallSpacing),
                    Row(
                      children: [
                        Text(year, style: AppTextStyles.bodyMedium),
                        SizedBox(width: AppDimens.mediumSpacing),
                        Icon(
                          Icons.star_rate_rounded,
                          color: AppColors.ratingIcon,
                          size: AppDimens.mediumIcon,
                        ),
                        Text(rating, style: AppTextStyles.bodyMedium),
                      ],
                    ),
                    SizedBox(height: AppDimens.mediumSpacing),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
