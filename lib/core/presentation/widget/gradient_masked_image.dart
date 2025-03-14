import 'package:book_app/core/presentation/widget/cached_image_with_shimmer.dart';
import 'package:flutter/material.dart';

class GradientMaskedImage extends StatelessWidget {
  const GradientMaskedImage({
    super.key,
    required this.imageHeight,
    required this.imageWidth,
    required this.imageUrl,
  });

  final double imageHeight;
  final double imageWidth;
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
        imageHeight: imageHeight,
        imageWidth: imageWidth,
        imageUrl: imageUrl,
      ),
    );
  }
}
