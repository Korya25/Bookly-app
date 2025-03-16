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
        // Book cover image with gradient mask
        GradientMaskedImage(
          imageUrl:
              'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
        ),

        // Book details content
        const BookDetailsContent(),

        // Back and bookmark buttons
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimens.padding12,
            horizontal: AppDimens.padding16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircularIconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icons.arrow_back_ios_new,
              ),
              CircularIconButton(onPressed: () {}, icon: Icons.bookmark),
            ],
          ),
        ),
      ],
    );
  }
}
