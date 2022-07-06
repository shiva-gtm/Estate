import 'package:estate/Login/login.dart';
import 'package:estate/Welcome/welcome.dart';
import 'package:estate/services/Auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          return const WelcomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
