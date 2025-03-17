import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';

class HorizontalListViewSeparatedCard extends StatelessWidget {
  const HorizontalListViewSeparatedCard({
    super.key,
    required this.onTap,
    required this.imageUrl,
    required this.title,
    required this.rating,
  });

  final VoidCallback onTap;
  final String imageUrl;
  final String title;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.mediumCardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimens.smallRadius),
              child: CachedImageWithShimmer(
                imageUrl: imageUrl,
                imageHeight: AppDimens.largeCardHeight,
                imageWidth: double.infinity,
              ),
            ),
          ),
          SizedBox(height: AppDimens.smallSpacing),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.bodyLarge,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: AppColors.ratingIcon,
                    size: AppDimens.mediumIcon,
                  ),
                  Text(rating, style: AppTextStyles.caption),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
