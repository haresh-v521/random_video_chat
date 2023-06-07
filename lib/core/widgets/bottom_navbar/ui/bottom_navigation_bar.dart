import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call/core/colors/color_style.dart';
import 'package:video_call/core/widgets/bottom_navbar/business/provider/bottom_navigation_provider.dart';

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
              child: bottomNavProvider.widgetOptions
                  .elementAt(bottomNavProvider.selectedIndex),
            );
          },
        ),
      ),
      bottomNavigationBar:
          ChangeNotifierProvider<BottomNavigationProvider>.value(
        value: bottomNavigationProvider,
        child: Consumer<BottomNavigationProvider>(
          builder: (context, bottomNavProvider, child) {
            return Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, bottom: 20),
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SizedBox(
                  height: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(
                              Icons.videocam,
                              size: 42,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              Icons.settings,
                              size: 42,
                            ),
                            label: ''),
                      ],
                      currentIndex: bottomNavProvider.selectedIndex,
                      selectedItemColor: ColorStyle.primaryColor,
                      onTap: bottomNavProvider.onItemTapped,
                    ),
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
