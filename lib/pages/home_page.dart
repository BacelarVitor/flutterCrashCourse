import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bacelar Co'),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/rocket.png'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/space.png'),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/rocket.png'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
