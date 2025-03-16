import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';

class VerticalListViewSepartedCard extends StatelessWidget {
  const VerticalListViewSepartedCard({super.key, required this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppDimens.size175,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 20, 14, 41),
          borderRadius: BorderRadius.circular(AppDimens.size8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppDimens.padding8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.size8),
                child: CachedImageWithShimmer(
                  imageUrl:
                      'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
                  imageHeight: double.infinity,
                  imageWidth: AppDimens.size110,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppDimens.padding6),
                    child: Text(
                      'The Godfather',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: AppDimens.size16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: AppDimens.padding12,
                        ),
                        child: Text(
                          '1972',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: AppDimens.size14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.star_rate_rounded,
                        color: AppColors.ratingIconColor,
                        size: AppDimens.size18,
                      ),
                      Text(
                        '8.7',
                        style: TextStyle(
                          fontSize: AppDimens.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: AppDimens.padding14),
                    child: Text(
                      'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: AppDimens.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
