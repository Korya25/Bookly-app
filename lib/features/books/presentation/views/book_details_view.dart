import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details', style: AppTextStyles.font32WhiteW800),
      ),
      body: Center(
        child: Text('Book Details', style: AppTextStyles.font32WhiteW800),
      ),
    );
  }
}
