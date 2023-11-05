import 'package:blogs_app/core/themes/my_themes.dart';
import 'package:blogs_app/presentation/routes/router_imports.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter=AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      routerConfig: _appRouter.config(),
      // home: HomeScreen(),
    );
  }
}
