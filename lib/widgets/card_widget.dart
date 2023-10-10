import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});

  final String imagePath;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kDouble10),
        child: Column(
          children: [
            const SizedBox(
              height: kDouble5,
            ),
            Image.asset(imagePath),
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(description),
            const SizedBox(
              height: kDouble10,
            ),
          ],
        ),
      ),
    );
  }
}
