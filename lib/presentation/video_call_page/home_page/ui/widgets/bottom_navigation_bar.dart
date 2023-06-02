import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/presentation/video_call_page/home_page/business/providers/bottom_navigation_provider.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomNavigationProvider bottomNavigationProvider =
      BottomNavigationProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<BottomNavigationProvider>.value(
        value: bottomNavigationProvider,
        child: Consumer<BottomNavigationProvider>(
          builder: (context, bottomNavProvider, child) {
            return Center(
              child: bottomNavProvider.widgetOptions.elementAt(bottomNavProvider.selectedIndex),
            );
          },
        ),
      ),
      bottomNavigationBar: ChangeNotifierProvider<BottomNavigationProvider>.value(
        value: bottomNavigationProvider,
        child: Consumer<BottomNavigationProvider>(
          builder: (context, bottomNavProvider, child) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 13, right: 70, left: 70),
              child: Card(
                elevation: 20,
                shadowColor: ColorStyle.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.videocam,
                            size: 40,
                          ),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.settings,
                            size: 40,
                          ),
                          label: ''),
                    ],
                    currentIndex: bottomNavProvider.selectedIndex,
                    selectedItemColor: ColorStyle.primaryColor,
                    onTap: bottomNavProvider.onItemTapped,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
