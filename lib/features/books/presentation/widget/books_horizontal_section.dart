import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/core/presentation/widget/horizontal_list_view_separated_card.dart';
import 'package:book_app/features/books/presentation/widget/horizontal_books_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksHorizontalSection extends StatelessWidget {
  const BooksHorizontalSection({
    super.key,
    required this.title,
    required this.onTap,
    this.itemCount = 10,
  });

  final String title;
  final VoidCallback onTap;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return HorizontalBooksSection(
      title: title,
      onTap: onTap, // للـ "See All"
      itemCount: itemCount,
      itemBuilder:
          (context, index) => HorizontalListViewSeparatedCard(
            onTap: () {
              // تمرير معرف الكتاب للتنقل إلى تفاصيل كتاب جديد
              context.pushNamed(
                AppRoutes.bookDetailsRoute,
                extra: {
                  'bookId':
                      '${title.toLowerCase().replaceAll(' ', '_')}_$index',
                },
              );
            },
            imageUrl:
                'https://aboutmsr.com/wp-content/uploads/2024/06/441-1.jpg',
            title: 'Zamalek is the largest sports club in Egypt',
            rating: '4.5',
          ),
    );
  }
}
