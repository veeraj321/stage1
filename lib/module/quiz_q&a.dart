import 'package:flutter/material.dart';

class AnwwerButton extends StatelessWidget {
  const AnwwerButton(
      {super.key, required this.textanswer, required this.onTap});

  final String textanswer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(onPressed: onTap, child: Text(textanswer)));
  }
}
