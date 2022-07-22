import 'package:estate/EstateMapView/map.dart';
import 'package:estate/Home/home.dart';
import 'package:estate/loading.dart';
import 'package:estate/test.dart';
import 'package:flutter/material.dart';
import 'package:estate/Login/login.dart';
import 'package:estate/services/auth.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("error"),
          );
        } else if (snapshot.hasData) {
          return MapScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
