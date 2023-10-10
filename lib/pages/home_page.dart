import "package:flutter/material.dart";
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
                title: 'Rocket',
                description: 'Rocket fon!',
                imagePath: kRocketImage),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    title: 'Space',
                    description: 'Space flin!',
                    imagePath: kSpaceImage,
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    title: 'Travel',
                    description: 'Travel flinston',
                    imagePath: kTravelImage,
                  ),
                ),
              ],
            ),
            CardWidget(
              title: 'Yeah',
              description: 'Fock Yeah!',
              imagePath: kYeahImage,
            ),
          ],
        ),
      ),
    );
  }
}
