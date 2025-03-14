import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/constant/app_dimens.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CachedImageWithShimmer extends StatelessWidget {
  const CachedImageWithShimmer({
    super.key,
    required this.imageHeight,
    required this.imageWidth,
    required this.imageUrl,
    this.borderRadius = AppDimens.borderRadius0,
    this.boxShadow,
  });

  final double imageHeight;
  final double imageWidth;
  final String imageUrl;
  final double borderRadius;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: imageHeight.h,
      width: imageWidth.w,
      fit: BoxFit.cover,
      imageUrl: imageUrl,
      placeholder: (context, url) => _buildShimmerLoading(),
      errorWidget: (context, url, error) => _buildErrorIcon(),
    );
  }

  Widget _buildShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[850]!,
      highlightColor: Colors.grey[800]!,
      child: Container(
        width: imageWidth.w,
        height: imageHeight.h,
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: boxShadow,
        ),
      ),
    );
  }

  Widget _buildErrorIcon() {
    return Icon(Icons.error, color: AppColors.errorColor, size: 24.h);
  }
}
