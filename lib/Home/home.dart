import 'package:estate/services/Auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
