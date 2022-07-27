import 'package:flutter/material.dart';

import 'custom_card.dart';

class Amenities extends StatelessWidget {
  const Amenities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomCard(
              topic: 'Amenities',
            ),
            const SizedBox(
              width: 180,
            ),
            const Icon(
              Icons.description_sharp,
              color: Color.fromARGB(137, 13, 13, 13),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.check_circle,
              size: 20,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Water Supply',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.check_circle,
              size: 20,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Modular Kitchen',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.check_circle,
              size: 20,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Earthquake',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.check_circle,
              size: 20,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Marble/Tile',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.check_circle,
              size: 20,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Parking',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              width: 65,
            ),
            Icon(
              Icons.check_circle,
              size: 20,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Balcony',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
