import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../EstateList/list.dart';
import '../EstateMapView/map.dart';
import '../Profile/profile.dart';
import '../favourite/favourite.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final indexs = GlobalKey<_BottomNavBarState>();

  final screen = [
    const MapScreen(),
    const ListScreen(),
    const FavouriteScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final currentIndex = indexs.currentState?.currentIndex == null
        ? 0
        : indexs.currentState!.currentIndex;
    return Scaffold(
      body: ListScreen(),
      bottomNavigationBar: BottomNavBar(key: indexs),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.mapLocation,
            size: 25,
          ),
          label: 'Map View',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.list,
            size: 25,
          ),
          label: 'List View',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.circleUser,
            size: 25,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.heart,
            size: 25,
          ),
          label: 'Favourite',
        ),
      ],
      onTap: (idx) => setState(() => currentIndex = idx),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
    );
  }
}
