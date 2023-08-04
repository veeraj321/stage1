import 'package:flutter/material.dart';

class AnswerDisplay extends StatelessWidget {
  const AnswerDisplay(
      {super.key,
      required this.que,
      required this.ans,
      required this.rightans});

  final String que;
  final String ans;
  final List<String> rightans;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text("out of ${myquestion.length} $correct is correct all the best"),
          Text(
            'question -> $ans',
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 10),
          Text(
            "rightr ans -> $que,",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "your ans -> $rightans",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
