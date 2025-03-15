import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';

class HorizontalBooksCardSection extends StatelessWidget {
  final Function() onTap;
  const HorizontalBooksCardSection({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.size120,
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimens.size8),
              child: CachedImageWithShimmer(
                imageUrl:
                    'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
                imageHeight: AppDimens.size175,
                imageWidth: double.infinity,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Real Madrid CF:',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: AppColors.textPrimary,
                ),
              ),

              // Rating Widget
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: AppColors.ratingIconColor,
                    size: AppDimens.size18,
                  ),
                  Text(
                    '7.8/10',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
