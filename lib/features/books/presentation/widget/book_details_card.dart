import 'package:book_app/core/constant/app_dimens.dart';
import 'package:book_app/core/presentation/widget/circular_icon_button.dart';
import 'package:book_app/core/presentation/widget/gradient_masked_image.dart';
import 'package:book_app/features/books/presentation/widget/book_details_content.dart';
import 'package:flutter/material.dart';

class BookDetailsCard extends StatelessWidget {
  const BookDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image with gradient mask
        GradientMaskedImage(
          imageUrl: 'https://aboutmsr.com/wp-content/uploads/2024/06/441-1.jpg',
        ),

        // Book details content (title, year, etc.)
        BookDetailsContent(
          title: 'Zamalek',
          year: '1911',
          genre: 'Sports',
          rating: '5',
          ratingCount: '357',
        ),

        // Navigation and bookmark controls
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppDimens.mediumSpacing,
            horizontal: AppDimens.largeSpacing,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircularIconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icons.arrow_back_ios_new,
              ),
              CircularIconButton(
                onPressed: () {}, // يمكن إضافة منطق لاحقًا
                icon: Icons.bookmark,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
