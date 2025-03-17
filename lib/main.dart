import 'package:book_app/core/router/app_router.dart';
import 'package:book_app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
