import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/theme_data/theme_data.dart';

void main() {
  runApp(
    ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp.router(
          theme: DataTheme().themeData(),
          routerConfig: AppRoutes.router,
          key: navigatorKey,
        );
      },
    ),
  );
}
