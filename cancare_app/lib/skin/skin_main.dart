// ignore_for_file: camel_case_types, prefer_const_constructors, override_on_non_overriding_member, avoid_print

import 'package:cancare_app/skin/quiz_skin.dart';
import 'package:cancare_app/skin/result_skin.dart';
import 'package:flutter/material.dart';

class SkinMain extends StatefulWidget {
  const SkinMain({Key? key}) : super(key: key);

  @override
  State<SkinMain> createState() => _SkinMainState();
}

class _SkinMainState extends State<SkinMain> {
  @override
  var _questionIndex = 0; //property

  final _questions = const [
    {
      'questionText':
          'Do you notice new or unusual growths, or changes in the size?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText': 'Do you  feel irritation or buring sensation in sun?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText':
          'Do you notice any irregular or jagged borders of a mole or spot?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you notice redness or uneven color of any mole?',
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
                "Quiz for Skin Cancer",
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
                    ? SkinQuiz(
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      )
                    : SkinResult(_totalScore, _resetQuiz),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
