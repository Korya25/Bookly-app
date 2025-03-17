import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  const CastCard({
    super.key,
    this.imageUrl =
        'https://mediaaws.almasryalyoum.com/news/large/2020/07/31/1273615_0.jpg',
    this.name = 'Ahmed Refat',
  });

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.mediumCardWidth, // 120px من AppDimens
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimens.smallRadius),
              child: CachedImageWithShimmer(
                imageUrl: imageUrl,
                imageHeight: AppDimens.largeCardHeight * 0.8, // 80% من 175px
                imageWidth: double.infinity,
              ),
            ),
          ),
          SizedBox(height: AppDimens.smallSpacing),
          Text(
            name,
            style: AppTextStyles.headingSmall,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
