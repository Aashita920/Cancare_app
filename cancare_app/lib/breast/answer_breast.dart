// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class BreastAnswer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  BreastAnswer(this.selectHandler, this.answerText);
  //const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Color.fromARGB(255, 48, 165, 89),
        child: Text(
          answerText,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17.5),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
