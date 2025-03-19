import 'package:book_app/core/constant/app_strings.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/features/books/presentation/widget/book_author_section.dart';
import 'package:book_app/features/books/presentation/widget/book_summary_section.dart';
import 'package:book_app/features/books/presentation/widget/book_details_card.dart';
import 'package:book_app/features/books/presentation/widget/books_horizontal_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, this.bookId});

  final String? bookId;

  @override
  Widget build(BuildContext context) {
    // Displays detailed information about a selected book
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: BookDetailsCard()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: BookSummarySection(
              summary:
                  "Online Searching prepares students in library and information science programs to assist information seekers at all levels, from university faculty to elementary school students. Included in the third edition are interviews with librarians and other information professionals whose words of wisdom broaden graduate students’ perspectives regarding online searching in a variety of work settings serving different kinds of information seekers. The book’s chapters are organized according to the steps in the search process: 1. Conducting a reference interview to determine what the seeker wants 2. Identifying sources that are likely to produce relevant information for the seeker’s query 3. Determining whether the user seeks a known item or information about a subject 4. Dividing the query into main ideas and combining them logically 5. Representing the query as input to the search system 6. Conducting the search and responding strategically 7. Displaying retrievals, assessing them, and responding tactically A new chapter on web search engines builds on students’ existing experience with keyword searching and relevance ranking by introducing them to more sophisticated techniques to use in the search box and on the results page. A completely revised chapter on assessing research impact discusses the widespread use of author and article iMetrics, a trend that has developed rapidly since the publication of the second edition. More than 100 figures and tables provide readers with visualizations of concepts and examples of real searches and actual results. Textboxes offer additional topical details and professional insights. New videos supplement the text by delving more deeply into topics such as database types, information organization, specialized search techniques, results filtering, and the role of browsing in the information seeking process. An updated glossary makes it easy to find definitions of terms used throughout the book. With new and updated material, this edition of Online Searching gives students knowledge and skills for success when intermediating between information seekers and the sources they need.",
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(child: BookAuthorsSection()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: BooksHorizontalSection(
              title: AppStrings.similarBooks,
              onTap: () => context.goNamed(AppRoutes.similarBooksRoute),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
