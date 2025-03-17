import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:book_app/core/presentation/widget/horizontal_list_view_separated.dart';
import 'package:book_app/features/books/presentation/widget/cast_card.dart';
import 'package:flutter/material.dart';

class BookAuthorsSection extends StatelessWidget {
  const BookAuthorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimens.largeSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.author, style: AppTextStyles.headingMedium),
          SizedBox(height: AppDimens.mediumSpacing),
          HorizontalListViewSeparated(
            height: AppDimens.largeCardHeight,
            itemCount: 3,
            itemBuilder: (context, index) => const CastCard(),
          ),
        ],
      ),
    );
  }
}
