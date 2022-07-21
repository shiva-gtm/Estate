import 'package:estate/services/Auth.dart';
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
    MapScreen(),
    ListScreen(),
    FavouriteScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final currentIndex = indexs.currentState?.currentIndex == null
        ? 0
        : indexs.currentState!.currentIndex;
    return Scaffold(
      body: screen[currentIndex],
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ElevatedButton(
        child: Text("signout"),
        onPressed: () async {
          await AuthService().signOut;
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/login', (route) => false);
        },
      ),
    );
  }
}
