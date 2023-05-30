import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/theme_data/theme_data.dart';
import 'package:video_call/presentation/auth/sign_up_page/business/provider/sign_up_provider.dart';

import 'presentation/auth/sign_in_page/business/provider/sign_in_provider.dart';

void main() {
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: DataTheme().themeData(),
      routerConfig: AppRoutes.router,
      key: navigatorKey,
    ),
  );
}
