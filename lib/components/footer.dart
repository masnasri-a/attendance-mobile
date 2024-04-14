import 'package:attendance/home/main.dart';
import 'package:attendance/profiles/main.dart';
import 'package:attendance/task/main.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterMenu extends StatelessWidget {
  final int selectedIndex;

  FooterMenu({Key? key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
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
          icon: FaIcon(FontAwesomeIcons.house, size: 20),
          label: 'Home',
          tooltip: "Home Page",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.fileLines, size: 20),
          label: 'Task',
          tooltip: "Task Page",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.gauge, size: 20),
          label: 'Service',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user, size: 20),
          label: 'Profile',
          tooltip: "Profile Page",
        ),
      ],
      onTap: (value) {
        if (value == 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainPage()));
        } else if (value == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TaskPage()));
        } else if (value == 2) {
          Navigator.pushNamed(context, '/service');
        } else if (value == 3) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfilePage()));
        }
      },
    );
  }
}
