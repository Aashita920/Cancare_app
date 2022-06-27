// ignore_for_file: camel_case_types, prefer_const_constructors, override_on_non_overriding_member

import 'package:cancare_app/bladder/bladder_quiz.dart';
import 'package:cancare_app/bladder/result_bladder.dart';
import 'package:cancare_app/breast/quiz_breast.dart';
import 'package:cancare_app/breast/result_breast.dart';
import 'package:flutter/material.dart';

class bladderMain extends StatefulWidget {
  const bladderMain({Key? key}) : super(key: key);

  @override
  State<bladderMain> createState() => _bladderMainState();
}

class _bladderMainState extends State<bladderMain> {
  @override
  var _questionIndex = 0; //property

  final _questions = const [
    {
      'questionText': 'The color of your urine is pink, red, or cola-colored?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText': 'Do you have pain on either side of your back?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText': 'Have you recently lost weight drastically?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you feel exhausted all the time?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you feel pain or buring sensation when you pee ?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you feel notice any abnormal change in your peeing?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
  ];
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have  more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['hello'];
    // dummy.add('Max');
    // print(dummy);
    //dummy =[];
    //questions = [];// Does not work if questions is a const
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Quiz for Bladder Cancer",
                style: TextStyle(fontSize: 27.0),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: _questionIndex < _questions.length
                    ? bladderQuiz(
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      )
                    : bladderResult(_totalScore, _resetQuiz),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
