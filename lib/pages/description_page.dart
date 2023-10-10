import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key, required this.item});
  final ItemClass item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(item.imagePath),
              FittedBox(
                child: Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 200, fontWeight: FontWeight.bold),
                ),
              ),
              //PAREI NO BACON IPSUM
              const Text(kComunaDescription),
            ],
          ),
        ),
      ),
    );
  }
}
