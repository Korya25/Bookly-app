import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:book_app/core/constant/app_colors.dart';
import 'package:book_app/core/router/app_routes.dart';

class BottomNavIcons {
  static bool isCurrentRoute(BuildContext context, String routeName) {
    final GoRouterState state = GoRouterState.of(context);
    return state.uri.path == routeName;
  }

  static List<Widget> getIcons(BuildContext context) {
    return [
      buildInkWellButton(
        iconData: Icons.book,
        onTap: () => context.goNamed(AppRoutes.booksRoute),
        isFocused: isCurrentRoute(context, AppRoutes.booksRoute),
      ),
      buildInkWellButton(
        iconData: Icons.bookmark,
        onTap: () => context.goNamed(AppRoutes.bookMarkRoute),
        isFocused: isCurrentRoute(context, AppRoutes.bookMarkRoute),
      ),
      buildInkWellButton(
        iconData: Icons.library_music,
        onTap: () => context.goNamed(AppRoutes.musicLibraryRoute),
        isFocused: isCurrentRoute(context, AppRoutes.musicLibraryRoute),
      ),
      buildInkWellButton(
        iconData: Icons.circle,
        onTap: () => context.goNamed(AppRoutes.profileRoute),
        isFocused: isCurrentRoute(context, AppRoutes.profileRoute),
      ),
    ];
  }

  static Widget buildInkWellButton({
    required IconData iconData,
    required Function() onTap,
    required bool isFocused,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Icon(
        iconData,
        color: isFocused ? AppColors.iconPrimary : AppColors.iconSecondary,
      ),
    );
  }
}
