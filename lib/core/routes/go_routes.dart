import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call_app/presentation/welcome_page/ui/welcome_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class AppRoutes
{



  static const root = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: root,
        builder: (context, state) => const WelcomePage(),
      ),
    ],
  );
}