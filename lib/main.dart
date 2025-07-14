import 'package:bizkit_app/core/constants/app_routes.dart';
import 'package:bizkit_app/core/constants/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().light(context),
        darkTheme: AppTheme().dark(context),
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.homePage,
      ),
    );
  }
}
