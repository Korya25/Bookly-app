import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/presentation/widget/custom_carousel_slider.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/features/books/presentation/widget/books_slider_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksCarousel extends StatelessWidget {
  const FeaturedBooksCarousel({
    super.key,
    this.itemCount = AppConstants.carouselSliderItemsCount,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return CustomCarouselSlider(
      itemCount: itemCount,
      itemBuilder:
          (context, index, realIndex) => BooksSliderCard(
            currentIndex: index,
            onTap: () => context.goNamed(AppRoutes.bookDetailsRoute),
          ),
    );
  }
}
