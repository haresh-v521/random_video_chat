import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/theme_data/theme_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (value) => runApp(
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: DataTheme().themeData(),
        routerConfig: AppRoutes.router,
        key: navigatorKey,
      ),
    ),
  );
}
