import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class PopularBooksView extends StatelessWidget {
  const PopularBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.popularBooks,
          style: AppTextStyles.font20WhiteW700,
        ),
      ),
      body: const PopularBooksWidget(),
    );
  }
}

class PopularBooksWidget extends StatelessWidget {
  const PopularBooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: Text('Popular Books'),
          elevation: 10,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }
}
