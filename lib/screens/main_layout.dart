import 'package:flutter/material.dart';
import 'package:lux_drive/screens/bookings_screen.dart';
import 'package:lux_drive/screens/home_screen.dart';
import 'package:lux_drive/screens/notificaitons_screen.dart';
import 'package:lux_drive/screens/settings_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    NotificaitonsScreen(),
    BookingsScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: IndexedStack(index: currentIndex, children: screens),
  bottomNavigationBar: Theme(
    data: Theme.of(context).copyWith(
      splashColor: Colors.transparent,        
      highlightColor: Colors.transparent,    
    ),
    child: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      backgroundColor: Color(0xFF161B29),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none_rounded), label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(Icons.date_range_outlined), label: "Bookings"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    ),
  ),
);
  }
}
