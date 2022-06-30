// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class UterineAnswer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  UterineAnswer(this.selectHandler, this.answerText);
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
