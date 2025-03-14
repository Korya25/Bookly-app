import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/features/books/presentation/views/book_details_view.dart';
import 'package:book_app/features/books/presentation/views/books_view.dart';
import 'package:go_router/go_router.dart';

const String booksPath = '/books';
const String bookDetailsPath = 'book_details'; // Relative path (sub-route)

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: booksPath,
    routes: [
      GoRoute(
        path: booksPath,
        name: AppRoutes.booksRoute,
        builder: (context, state) => const BooksView(),
        routes: [
          // Nested route for book details
          GoRoute(
            path: bookDetailsPath,
            name: AppRoutes.bookDetailsRoute,
            builder: (context, state) => const BookDetailsView(),
          ),
        ],
      ),
    ],
  );
}
