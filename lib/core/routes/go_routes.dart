import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_call/presentation/auth/sign_in_page/ui/sign_in_screen.dart';
import 'package:video_call/presentation/auth/sign_up_page/ui/sign_up_screen.dart';
import 'package:video_call/presentation/profile_page/ui/profile_screen.dart';
import 'package:video_call/presentation/video_call_page/home_page/ui/home_screen.dart';
import 'package:video_call/presentation/video_call_page/home_page/ui/widgets/bottom_navigation_bar.dart';
import 'package:video_call/presentation/video_call_page/vc_page/ui/vc_screen.dart';
import 'package:video_call/presentation/welcome_page/ui/welcome_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static const root = '/';
  static const signUp = '/sign_up';
  static const signIn = '/sign_in';
  static const bottomNavigationBarPage = '/bottom_navigation_bar_page';
  static const homePage = '/home';
  static const bottomBar = '/bottomBar';
  static const vcScreen = '/vcScreen';
  static const profileScreen = '/profileScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: root,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: signUp,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: signIn,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: bottomBar,
        builder: (context, state) => const BottomNavBar(),
      ),
      GoRoute(
        path: homePage,
        builder: (context, state) => const HomePage(),
      ),

      GoRoute(
        path: vcScreen,
        builder: (context, state) => const VcScreen(),
      ),

      GoRoute(
        path: profileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),

    ],
  );
}
