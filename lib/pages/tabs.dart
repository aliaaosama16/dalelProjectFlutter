import 'package:dalel_project/pages/tabs_pages/home.dart';
import 'package:dalel_project/pages/tabs_pages/notifications.dart';
import 'package:dalel_project/pages/tabs_pages/profile.dart';
import 'package:dalel_project/pages/tabs_pages/reservations.dart';
import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NotificationsPage(),
    ProfilePage(),
    ReservationsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: secondaryColorBackground,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Reservations',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        selectedFontSize: 16,
        selectedLabelStyle: TextStyle(
          color: primaryColor,
          fontFamily: 'Cairo-Regular',
        ),
        unselectedLabelStyle: TextStyle(
          color: secondaryColor,
          fontFamily: 'Cairo-Regular',
        ),
        unselectedItemColor: secondaryColor,
        unselectedIconTheme: IconThemeData(
          color: secondaryColor,
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
