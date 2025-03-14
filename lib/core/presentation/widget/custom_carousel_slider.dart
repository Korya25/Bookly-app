import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.height,
  });

  final double height;
  final int itemCount;
  final Widget Function(BuildContext, int, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      options: CarouselOptions(
        height: height,
        viewportFraction: 1,
        autoPlay: true,
      ),
    );
  }
}
