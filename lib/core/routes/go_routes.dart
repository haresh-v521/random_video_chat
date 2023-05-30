import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/presentation/bottom_sheet/ui/bottom_sheet_screen.dart';
import 'package:video_call/presentation/sign_in_page/ui/sign_in_screen.dart';
import 'package:video_call/presentation/sign_up_page/ui/sign_up_screen.dart';
import 'package:video_call/presentation/welcome_page/ui/welcome_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static const root = '/';
  static const sign_up = '/sign_up';
  static const sign_in = '/sign_in';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: root,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: sign_up,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: sign_in,
        builder: (context, state) => const SignInPage(),
      ),
      // GoRoute(
      //   path: root,
      //   builder: (context, state) => const BottomNavigationBarExampleApp(),
      // ),

    ],
  );
}
