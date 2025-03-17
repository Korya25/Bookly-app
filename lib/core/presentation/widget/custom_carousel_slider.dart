import 'package:book_app/core/constant/app_dimens.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.options,
  });

  final int itemCount;
  final Widget Function(BuildContext, int, int) itemBuilder;
  final CarouselOptions? options;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return CarouselSlider.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      options:
          options ??
          CarouselOptions(
            height: screenHeight * AppDimens.carouselHeightFactor,
            viewportFraction: 1,
            autoPlay: true,
          ),
    );
  }
}
