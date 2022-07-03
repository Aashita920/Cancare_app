// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cancare_app/breast/answer_breast.dart';
import 'package:cancare_app/breast/questions_breast.dart';
import 'package:cancare_app/neck/answer_neck.dart';
import 'package:cancare_app/neck/questions_neck.dart';
import 'package:flutter/material.dart';

class NeckQuiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;
  NeckQuiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NeckQuestion(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return NeckAnswer(() => answerQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
