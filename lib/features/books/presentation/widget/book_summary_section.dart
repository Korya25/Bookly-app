import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class BookSummarySection extends StatelessWidget {
  const BookSummarySection({
    super.key,
    required this.summary,
    this.trimLines = 4,
  });

  final String summary;
  final int trimLines;

  @override
  Widget build(BuildContext context) {
    // Displays a collapsible summary of the book
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimens.largeSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.story, style: AppTextStyles.headingMedium),
          SizedBox(height: AppDimens.mediumSpacing),
          ReadMoreText(
            summary,
            trimLines: trimLines,
            textAlign: TextAlign.start,
            trimCollapsedText: '...read more',
            trimExpandedText: '...read less',
            trimMode: TrimMode.Line,
            style: AppTextStyles.bodyLarge,
            moreStyle: AppTextStyles.bodyMedium,
            lessStyle: AppTextStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}
