import 'package:flutter/cupertino.dart';
import 'package:video_call/presentation/setting_page/ui/setting_screen.dart';
import 'package:video_call/presentation/video_call_page/home_page/ui/home_screen.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int selectedIndex = 0;
  List widgetOptions = [
    const HomePage(),
    const SettingScreen(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
