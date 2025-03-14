import 'package:book_app/core/presentation/screen/main_screen.dart';
import 'package:book_app/core/router/app_routes.dart';
import 'package:book_app/features/books/presentation/views/book_details_view.dart';
import 'package:book_app/features/books/presentation/views/books_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const String booksPath = '/books';
const String bookDetailsPath = 'book_details';
const String bookMarkPath = '/book_mark';
const String musicLibraryPath = '/music_library';
const String profilePath = '/profile';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: booksPath,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScreen(child: child),
        routes: [
          GoRoute(
            path: booksPath,
            name: AppRoutes.booksRoute,
            pageBuilder:
                (context, state) => NoTransitionPage(child: BooksView()),
            routes: [
              GoRoute(
                path: bookDetailsPath,
                name: AppRoutes.bookDetailsRoute,
                pageBuilder:
                    (context, state) =>
                        CupertinoPage(child: const BookDetailsView()),
              ),
            ],
          ),
          GoRoute(
            path: bookMarkPath,
            name: AppRoutes.bookMarkRoute,
            pageBuilder:
                (context, state) => NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('Book Mark'))),
                ),
          ),
          GoRoute(
            path: musicLibraryPath,
            name: AppRoutes.musicLibraryRoute,
            pageBuilder:
                (context, state) => NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('Music Library'))),
                ),
          ),
          GoRoute(
            path: profilePath,
            name: AppRoutes.profileRoute,
            pageBuilder:
                (context, state) => NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('Profile'))),
                ),
          ),
        ],
      ),
    ],
  );
}
