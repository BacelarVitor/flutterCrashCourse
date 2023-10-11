import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.item});
  final ItemClass item;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double titleFontSize = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.title),
        actions: [
          IconButton(
            onPressed: () =>
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('fon!'),
              behavior: SnackBarBehavior.floating,
            )),
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.item.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () => setState(() => titleFontSize = 25),
                    child: const Text('Small Title'),
                  ),
                  OutlinedButton(
                    onPressed: () => setState(() => titleFontSize = 50),
                    child: const Text('Medium Title'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => titleFontSize = 100),
                    child: const Text('Large Title'),
                  ),
                  FilledButton(
                    onPressed: () => setState(() => titleFontSize = 200),
                    child: const Text('HugeTitle'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.item.title,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                kComunaDescription,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: kDouble10,
              ),
              const Text(
                kComunaDescription,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
