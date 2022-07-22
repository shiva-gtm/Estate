import 'package:estate/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final CameraPosition _initialPositioned =
      CameraPosition(target: LatLng(27.669029, 85.373441));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            AuthService().signOut();
          },
          child: Icon(Icons.logout),
        ),
      ),
      body: Container(
        child: GoogleMap(
          initialCameraPosition: _initialPositioned,
          mapType: MapType.normal,
        ),
      ),
    );
  }
}
