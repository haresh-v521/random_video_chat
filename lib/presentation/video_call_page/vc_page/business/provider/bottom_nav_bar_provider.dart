import 'package:flutter/material.dart';
import 'package:video_call/presentation/video_call_page/vc_page/ui/vc_screen.dart';

class BottomNavBarProvider extends ChangeNotifier
{
  int selectedIndex = 0;
  List widgetOptions = [
    const VcScreen()
    // const Text(
    //   'Index 2: School',
    // ),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}