import 'package:book_app/core/constant/app_constant.dart';
import 'package:book_app/core/router/app_router.dart';
import 'package:book_app/core/themes/app_theme.dart';
import 'package:book_app/features/books/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const MyApp());

  Hive.registerAdapter(BookEntityAdapter());

  await Hive.openBox(AppConstants.kFeaturedBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      routerConfig: AppRouter.router,
    );
  }
}
