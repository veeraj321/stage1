import 'package:app/module/Displaypage.dart';
import 'package:flutter/material.dart';

import '../eventsclass/dummyevents.dart';
import '../main.dart';
import 'answerDispay.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(this.ans, {super.key, required this.switchScreen});

  final List<String> ans;
  final void Function() switchScreen;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int count = 0;
  int count2 = 0;
  List count1 = [];

  @override
  Widget build(BuildContext context) {
    const queans = myquestion;
    final ansList = widget.ans;

    for (int i = 0; i < ansList.length; i++) {
      final qunes1 = myquestion[i];
      if (ansList[i] == qunes1.ans1[0]) {
        count1.add(ansList[i]);
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            "out of ${myquestion.length} ${count1.length} is correct all the best"),
        ...queans.map((que) {
          final rightans = [ansList[count]];

          count++;

          return AnswerDisplay(
            ans: que.question,
            que: que.ans1[0],
            rightans: rightans,
          );
        }),
        ElevatedButton.icon(
            onPressed: () {
              count1 = [];
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => const StartApp(state: "quizClass")));
            },
            icon: const Icon(Icons.replay),
            label: const Text("reload"))
      ],
    );
  }
}
// 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