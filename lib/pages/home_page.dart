import "package:flutter/material.dart";
import "package:flutter_youtube/class/item_class.dart";
import "package:flutter_youtube/core/constants.dart";
import "package:flutter_youtube/widgets/card_widget.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bacelar Co'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              item: ItemClass(
                  title: 'Rocket',
                  description: 'Rocket fon!',
                  imagePath: kRocketImage),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    item: ItemClass(
                        title: 'Space',
                        description: 'Space flin!',
                        imagePath: kSpaceImage),
                  ),
                ),
                Expanded(
                  child: CardWidget(item: ItemClass(,
                    title: 'Travel',
                    description: 'Travel flinston',
                    imagePath: kTravelImage,
                  ),)
                ),
              ],
            ),
            CardWidget(item: ItemClass(
              title: 'Yeah',
              description: 'Fock Yeah!',
              imagePath: kYeahImage,
            )),
          ],
        ),
      ),
    );
  }
}
