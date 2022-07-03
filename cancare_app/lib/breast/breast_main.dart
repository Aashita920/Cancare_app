// ignore_for_file: camel_case_types, prefer_const_constructors, override_on_non_overriding_member, avoid_print

import 'package:cancare_app/breast/quiz_breast.dart';
import 'package:cancare_app/breast/result_breast.dart';
import 'package:flutter/material.dart';

class breastMain extends StatefulWidget {
  const breastMain({Key? key}) : super(key: key);

  @override
  State<breastMain> createState() => _breastMainState();
}

class _breastMainState extends State<breastMain> {
  @override
  var _questionIndex = 0; //property

  final _questions = const [
    {
      'questionText': 'Do you feel new lump in the breast or underarm?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText':
          'Do you  notice any thickening or swelling of part of the breast?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 2},
      ],
    },
    {
      'questionText': 'Do you feel irritation or dimpling of breast skin?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you notice redness or flaky skin in the nipple area or the breast?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you feel any pulling in of the nipple or pain in the nipple area?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you notice nipple discharge other than breast milk, including blood?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you notice any change in the size or the shape of the breast?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can not say', 'score': 5},
      ],
    },
    {
      'questionText': 'Do you feel pain any area of the breast?',
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
                "Quiz for breast cancer",
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
                    ? BreastQuiz(
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      )
                    : BreastResult(_totalScore, _resetQuiz),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
