import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';

class GradientMaskedImage extends StatelessWidget {
  const GradientMaskedImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback:
          (rect) => LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [Colors.black, Colors.black, Colors.transparent],
            stops: const [0.3, 0.5, 1],
          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height)),
      child: CachedImageWithShimmer(
        imageHeight: screenSize.height * AppDimens.sliderImageHeightFactor,
        imageWidth: double.infinity,
        imageUrl: imageUrl,
      ),
    );
  }
}
