import 'package:flutter/material.dart';

import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/theme_data/theme_data.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: DataTheme().themeData(),
      routerConfig: AppRoutes.router,
      key: navigatorKey,
    ),
  );
}
