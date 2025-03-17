import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/router/app_routes.dart';

class BottomNavIcons {
  static const _navItems = [
    {
      'icon': Icons.book,
      'route': AppRoutes.booksRoute,
      'relatedRoutes': [
        AppRoutes.booksRoute,
        AppRoutes.bookDetailsRoute,
        AppRoutes.popularBooksRoute,
        AppRoutes.newestBooksRoute,
      ],
    },
    {'icon': Icons.bookmark, 'route': AppRoutes.bookMarkRoute},
    {'icon': Icons.library_music, 'route': AppRoutes.musicLibraryRoute},
    {'icon': Icons.circle, 'route': AppRoutes.profileRoute},
  ];

  // Checks if the current route matches or is a sub-route of the provided route
  static bool _isCurrentRoute(BuildContext context, Map<String, dynamic> item) {
    final GoRouterState state = GoRouterState.of(context);
    final String currentPath = state.uri.path;
    final String mainRoute = item['route'] as String;
    final List<String>? relatedRoutes = item['relatedRoutes'] as List<String>?;

    // If there are related routes, check if the current path starts with any of them
    if (relatedRoutes != null) {
      return relatedRoutes.any((route) => currentPath.startsWith(route));
    }
    return currentPath == mainRoute;
  }

  static List<Widget> buildBottomNavIcons(BuildContext context) {
    return _navItems.map((item) {
      final String route = item['route'] as String;
      return _buildNavIconButton(
        iconData: item['icon'] as IconData,
        onTap: () => context.goNamed(route),
        isFocused: _isCurrentRoute(context, item),
      );
    }).toList();
  }

  static Widget _buildNavIconButton({
    required IconData iconData,
    required VoidCallback onTap,
    required bool isFocused,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Icon(
        iconData,
        color:
            isFocused
                ? AppColors.bottomNavBarIconFocused
                : AppColors.bottomNavBarIconUnfocused,
      ),
    );
  }
}
