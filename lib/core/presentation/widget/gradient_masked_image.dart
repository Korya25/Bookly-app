import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientMaskedImage extends StatelessWidget {
  const GradientMaskedImage({
    super.key,
    this.imageHeight = AppConstants.sliderCardHeight,
    required this.imageUrl,
  });

  final double imageHeight;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.black, Colors.transparent],
          stops: [0.3, 0.5, 1],
        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      child: CachedImageWithShimmer(
        imageHeight: imageHeight.h,
        imageWidth: double.infinity,
        imageUrl: imageUrl,
      ),
    );
  }
}
