import 'package:flutter/material.dart';

import './quesiton.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]["Answers"] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer["score"]),
            answer["text"],
          );
        }).toList()
      ],
    );
  }
}
