import 'package:estate/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:estate/Login/login.dart';
import 'package:estate/services/Auth.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("error"),
          );
        } else if (snapshot.hasData) {
          return const HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
