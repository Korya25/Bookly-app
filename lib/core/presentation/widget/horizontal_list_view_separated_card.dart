import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalListViewSeparatedCard extends StatelessWidget {
  final Function() onTap;
  const HorizontalListViewSeparatedCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.size120,
      child: Column(
        spacing: AppDimens.size5.h,
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
                'Real Madrid CF: The Story of the Greatest Team in the World',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.font14WhiteW900,
              ),

              // Rating Widget
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: AppColors.ratingIconColor,
                    size: AppDimens.size18,
                  ),
                  Text('7.8/10', style: AppTextStyles.font12greyW600),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
