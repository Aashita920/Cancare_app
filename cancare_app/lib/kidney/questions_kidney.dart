import 'package:flutter/material.dart';

class KidneyQuestion extends StatelessWidget {
  final String questionText;

  KidneyQuestion(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 102, 16, 2)),
        textAlign: TextAlign.center,
      ),
    );
  }
}