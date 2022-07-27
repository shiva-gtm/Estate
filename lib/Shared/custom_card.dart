import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  String topic = '';

  CustomCard({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 44,
      child: Card(
        color: Colors.white54,
        child: Center(
          child: Text(
            topic,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              // fontSize: 15,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
