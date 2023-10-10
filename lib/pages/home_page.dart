import "package:flutter/material.dart";
import "package:flutter_youtube/core/constants.dart";

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
            Card(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset('images/rocket.png'),
                    const Text(
                      'Title',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Text('Description'),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: kDouble5,
                          ),
                          Image.asset('images/space.png'),
                          const Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const Text('Description'),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Image.asset('images/travel.png'),
                          const Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const Text('Description'),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset('images/yeah.png'),
                    const Text(
                      'Title',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Text('Description'),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
