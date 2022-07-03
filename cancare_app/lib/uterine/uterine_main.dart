// ignore_for_file: camel_case_types, prefer_const_constructors, override_on_non_overriding_member, avoid_print

import 'package:cancare_app/thyroid/quiz_thyroid.dart';
import 'package:cancare_app/thyroid/result_thyroid.dart';
import 'package:cancare_app/uterine/quiz_uterine.dart';
import 'package:cancare_app/uterine/result_uterine.dart';
import 'package:flutter/material.dart';

class UterineMain extends StatefulWidget {
  const UterineMain({Key? key}) : super(key: key);

  @override
  State<UterineMain> createState() => _UterineMainState();
}

class _UterineMainState extends State<UterineMain> {
  @override
  var _questionIndex = 0; //property

  final _questions = const [
    {
      'questionText':
          'Do you notice vaginal bleeding between periods before menopause?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText':
          'Do you  notice vaginal bleeding or spotting postmenopause, even a slight amount?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText':
          'Do you feel lower abdominal pain or cramping in your pelvis, just below your belly?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you notice thin white or clear vaginal discharge if you’re postmenopausal?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you feel extremely prolonged, heavy or frequent vaginal bleeding if you’re older than 40.?',
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
                "Quiz for Uterine Cancer",
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
                    ? UterineQuiz(
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      )
                    : UterineResult(_totalScore, _resetQuiz),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
