import 'package:flutter/material.dart';

import 'custom_card.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomCard(topic: 'Overview'),
            const SizedBox(
              width: 180,
            ),
            const Icon(
              Icons.view_agenda_outlined,
              color: Color.fromARGB(137, 13, 13, 13),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.bed,
              size: 30,
              color: Colors.black45,
            ),
            Column(
              children: const [
                Text(
                  'Bedroom',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '9',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            const Icon(
              Icons.bathroom_outlined,
              size: 30,
              color: Colors.black45,
            ),
            Column(
              children: const [
                Text(
                  'Bathroom',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '3',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.kitchen_rounded,
              size: 30,
              color: Colors.black45,
            ),
            Column(
              children: const [
                Text(
                  'Kitchen',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 110,
            ),
            const Icon(
              Icons.living_outlined,
              size: 30,
              color: Colors.black45,
            ),
            Column(
              children: const [
                Text(
                  'Living Room',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.house_siding_sharp,
              size: 30,
              color: Colors.black45,
            ),
            Column(
              children: const [
                Text(
                  'Floors',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '2.5',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 115,
            ),
            const Icon(
              Icons.car_repair,
              size: 30,
              color: Colors.black45,
            ),
            Column(
              children: const [
                Text(
                  'Parking',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '5',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
