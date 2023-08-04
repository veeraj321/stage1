import 'package:app/module/quiz_q&a.dart';
import 'package:flutter/material.dart';

import '../eventsclass/dummyevents.dart';
import 'REsultScreen.dart';

class QiizClass extends StatefulWidget {
  const QiizClass({super.key, required this.switchScreen});

  final void Function() switchScreen;

  @override
  State<QiizClass> createState() => _QiizClassState();
}

class _QiizClassState extends State<QiizClass> {
  int count = 0;
  int count1 = 0;

  List<String> ans = [];

  void increment(String selectedans) {
    ans.add(selectedans);

    if (count <= myquestion.length - 1) {
      setState(() {
        if (count != myquestion.length - 1) {
          count = count + 1;
        } else {
          count1 = count1 + 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = myquestion[count];

    return count1 != 1
        ? SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text(currentquestion.question)),
                const SizedBox(
                  height: 10,
                ),
                ...currentquestion.getSuffelled().map((ans) {
                  return AnwwerButton(
                      textanswer: ans,
                      onTap: () {
                        increment(ans);
                      });
                })

                // AnwwerButton(textanswer: currentquestion.ans1[1], onTap: increment),
                // AnwwerButton(textanswer: currentquestion.ans1[2], onTap: increment),
                // AnwwerButton(textanswer: currentquestion.ans1[3], onTap: increment),
              ],
            ),
          )
        : ResultScreen(ans, switchScreen: widget.switchScreen);
  }
}
