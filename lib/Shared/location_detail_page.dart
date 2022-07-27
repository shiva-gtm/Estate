import 'package:flutter/material.dart';

import 'custom_card.dart';

class LocationDetailPage extends StatelessWidget {
  const LocationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomCard(topic: 'Location'),
            const SizedBox(
              width: 180,
            ),
            const Icon(
              Icons.location_on,
              color: Color.fromARGB(137, 13, 13, 13),
            )
          ],
        ),
      ],
    );
  }
}
