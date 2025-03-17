import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedImageWithShimmer extends StatelessWidget {
  const CachedImageWithShimmer({
    super.key,
    required this.imageHeight,
    required this.imageWidth,
    required this.imageUrl,
    this.borderRadius,
    this.boxShadow,
  });

  final double imageHeight;
  final double imageWidth;
  final String imageUrl;
  final double? borderRadius;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: imageHeight,
      width: imageWidth,
      fit: BoxFit.cover,
      imageUrl: imageUrl,
      placeholder: (context, url) => _buildShimmerPlaceholder(),
      errorWidget: (context, url, error) => _buildErrorWidget(),
    );
  }

  // Builds a shimmer effect while the image is loading
  Widget _buildShimmerPlaceholder() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[850]!,
      highlightColor: Colors.grey[800]!,
      child: Container(
        width: imageWidth,
        height: imageHeight,
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          boxShadow: boxShadow,
        ),
      ),
    );
  }

  // Displays an error icon if the image fails to load
  Widget _buildErrorWidget() {
    return Icon(Icons.error, color: AppColors.error, size: AppDimens.size24);
  }
}
