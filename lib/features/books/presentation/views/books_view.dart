import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class BooksView extends StatelessWidget {
  const BooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books', style: AppTextStyles.font32WhiteW800),
      ),
      body: Column(children: [const Center(child: Text('Books View'))]),
    );
  }
}
