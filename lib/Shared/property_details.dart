import 'package:flutter/material.dart';

import 'custom_card.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomCard(
              topic: 'Property Details',
            ),
            const SizedBox(
              width: 180,
            ),
            const Icon(
              Icons.info_outline,
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
              Icons.apartment,
              size: 25,
              color: Colors.black45,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Residential',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.add_road,
              size: 25,
              color: Colors.black45,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Pitched',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Icon(
              Icons.compass_calibration_sharp,
              size: 20,
              color: Colors.black45,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'South',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: const [
            Icon(
              Icons.arrow_forward_rounded,
              size: 25,
              color: Colors.black45,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Touch by Road',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.area_chart,
              size: 25,
              color: Colors.black45,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '4 Anna',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
