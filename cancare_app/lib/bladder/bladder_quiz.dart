import 'package:cancare_app/bladder/answer_bladder.dart';
import 'package:cancare_app/bladder/questions_bladder.dart';
import 'package:flutter/material.dart';

class bladderQuiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;
  bladderQuiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        bladderQuestion(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return bladderAnswer(() => answerQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
