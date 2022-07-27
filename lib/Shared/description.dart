import 'package:flutter/material.dart';

import 'custom_card.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomCard(topic: 'Description'),
            const SizedBox(
              width: 180,
            ),
            const Icon(
              Icons.description_outlined,
              color: Color.fromARGB(137, 13, 13, 13),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 7,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
              ),
              child: const SizedBox(
                width: 320,
                child: Text(
                  '4 Anna Beautiful Land On Sale At Imadol, Lalitpur. Suitable for farm house, resort, view and beautiful enviroment with fresh air to breath.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
