import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.mapLocation,
            size: 20,
          ),
          label: 'Map View',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.list,
            size: 20,
          ),
          label: 'List View',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.circleUser,
            size: 20,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.heart,
            size: 20,
          ),
          label: 'Favourite',
        ),
      ],
      onTap: (int idx) {
        switch (idx) {
          case 0:
            // do nothing
            break;
          case 1:
            Navigator.pushNamed(context, '/list');
            break;
          case 2:
            Navigator.pushNamed(context, '/profile');
            break;
          case 3:
            Navigator.pushNamed(context, '/favourite');
            break;
        }
      },
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
    );
  }
}
