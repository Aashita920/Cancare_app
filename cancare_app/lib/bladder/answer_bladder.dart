import 'package:flutter/material.dart';

class bladderAnswer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  bladderAnswer(this.selectHandler, this.answerText);
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
