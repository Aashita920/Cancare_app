// ignore_for_file: camel_case_types, prefer_const_constructors, override_on_non_overriding_member, avoid_print

import 'package:cancare_app/lungs/quiz_lungs.dart';
import 'package:cancare_app/lungs/result_lungs.dart';
import 'package:flutter/material.dart';

class LungsMain extends StatefulWidget {
  const LungsMain({Key? key}) : super(key: key);

  @override
  State<LungsMain> createState() => _LungsMainState();
}

class _LungsMainState extends State<LungsMain> {
  @override
  var _questionIndex = 0; //property

  final _questions = const [
    {
      'questionText':
          'Do you have a cough that does not go away or gets worse?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText':
          'Do you cough blood or rust-colored sputum (spit or phlegm)?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText':
          'Do you feel chest pain that is often worse with deep breathing, coughing, or laughing?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you feel hoarseness?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you notice Loss of appetite?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you notice unexplained weight loss?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you notice shortness of breath?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you feel tired or weak?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you have infections such as bronchitis and pneumonia that don’t go away or keep coming back?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you feel new onset of wheezing?',
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
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Quiz for Lungs Cancer",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30.0,
                    fontFamily: 'Nexa-Bold'),
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
                    ? LungsQuiz(
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      )
                    : LungsResult(_totalScore, _resetQuiz),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
