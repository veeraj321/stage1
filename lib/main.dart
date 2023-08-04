import 'package:app/module/Displaypage.dart';
import 'package:flutter/material.dart';

import 'module/homepage.dart';

void main() {
  runApp(const StartApp(
    state: 'landingPage',
  ));
}

class StartApp extends StatefulWidget {
  const StartApp({super.key, required this.state});

  final String state;

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  // ignore: prefer_typing_uninitialized_variables
  var state;

  void switchScreen() {
    setState(() {
      state = "quizClass";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              state == "landingPage"
                  ? HomePage(switchScreen)
                  : QiizClass(switchScreen: switchScreen),
            ]),
      ),
    );
  }
}
