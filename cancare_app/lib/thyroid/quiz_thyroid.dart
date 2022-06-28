import 'package:cancare_app/breast/answer_breast.dart';
import 'package:cancare_app/breast/questions_breast.dart';
import 'package:flutter/material.dart';

class ThyroidQuiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;
  ThyroidQuiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BreastQuestion(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return BreastAnswer(() => answerQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
