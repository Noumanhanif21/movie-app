import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    changeTab(int index) {
      setState(() {
        _selectedTab = index;
      });
    }

    return SizedBox(
      height: 90.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Theme(
          data: ThemeData(
            canvasColor: Theme.of(context).colorScheme.primary,
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            currentIndex: _selectedTab,
            onTap: (index) => changeTab(index),
            selectedItemColor: Theme.of(context).colorScheme.background,
            unselectedItemColor: Theme.of(context).colorScheme.secondary,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle),
                label: "Watch",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                label: "Media Library",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "More",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
