import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/custom_carousel_slider.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/features/books/presentation/widget/books_slider_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BooksSliderSection extends StatelessWidget {
  const BooksSliderSection({super.key});

  ///  Slider Section Height
  double get sliderSectionHeight => AppDimens.size350.h;

  @override
  Widget build(BuildContext context) {
    return CustomCarouselSlider(
      itemCount: AppConstants.carouselSliderItemsCount,
      itemBuilder: (context, index, realIndex) {
        return BooksSliderCard(
          currentIndex: index,
          sectionHeight: sliderSectionHeight,
          onTap: () {
            context.goNamed(AppRoutes.bookDetailsRoute);
          },
        );
      },
      height: AppDimens.size300,
    );
  }
}
