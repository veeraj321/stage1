import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(image: AssetImage("assets/John-Cena-14-266x150.webp")),
          const SizedBox(
            height: 20,
          ),
          const Text("u can't c me"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: switchScreen,
            label: const Text("Touch me if u can"),
            icon: const Icon(Icons.arrow_circle_right),
          )
        ],
      ),
    );
  }
}
