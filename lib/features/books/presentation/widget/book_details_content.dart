import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/circle_dot.dart';
import 'package:book_app/features/books/presentation/widget/preview_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsContent extends StatelessWidget {
  const BookDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: AppDimens.padding16,
        left: AppDimens.padding16,
        bottom: AppDimens.padding10,
      ),
      child: SizedBox(
        height: AppDimens.size350.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Book details (title, year, genre, rating)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Book title
                  Text(
                    'Title',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font18WhiteW800,
                  ),

                  // Book year and genre
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppDimens.padding4,
                      bottom: AppDimens.padding6,
                    ),
                    child: Row(
                      children: [
                        Text('1991', style: AppTextStyles.font12greyW500),
                        const CircleDot(),
                        Text('Science', style: AppTextStyles.font12greyW500),
                      ],
                    ),
                  ),

                  // Book rating
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rate_rounded,
                        color: AppColors.ratingIconColor,
                        size: AppDimens.size18,
                      ),
                      Text('6.1 ', style: AppTextStyles.font14WhiteW900),
                      Text('(346)', style: AppTextStyles.font12greyW500),
                    ],
                  ),
                ],
              ),
            ),

            // Preview button
            const PreviewButton(),
          ],
        ),
      ),
    );
  }
}
