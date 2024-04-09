import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        color: primaryColor,
      ),
      unselectedLabelStyle: const TextStyle(
        color: Colors.red,
        fontSize: 12,
      ),
      unselectedItemColor: Colors.grey,
      useLegacyColorScheme: true,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.house, size: 25),
          label: 'Home',
          activeIcon: Icon(Icons.home, color: primaryColor),
          tooltip: "Home Page",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.fileLines, size: 20),
          label: 'Calendar',
          activeIcon: Icon(Icons.calendar_today, color: primaryColor),
          tooltip: "Calendar Page",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.gauge, size: 20),
          activeIcon: Icon(Icons.calendar_today, color: primaryColor),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user, size: 20),
          label: 'Profile',
          activeIcon: Icon(Icons.person, color: primaryColor),
          tooltip: "Profile Page",
        ),
      ],
    );
  }
}
