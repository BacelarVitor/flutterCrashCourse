import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.item,
  });

  final ItemClass item;
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
            Image.asset(item.imagePath),
            Text(
              item.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(item.description),
            const SizedBox(
              height: kDouble10,
            ),
          ],
        ),
      ),
    );
  }
}
