// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cancare_app/kidney/kidney.dart';
import 'package:cancare_app/kidney/kidney_main.dart';
import 'package:flutter/material.dart';

class LiverResult extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  LiverResult(this.resultScore, this.resetHandler);
  //const Result({Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 40) {
      resultText = 'You are likely to have Liver Cancer';
    } else if (resultScore >= 20 && resultScore <= 10) {
      resultText = 'You have few chances of having Liver Cancer';
    } else {
      resultText = 'You have very less chances of having Liver Cancer';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 101, 12)),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KidneyMain()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 155, 45, 174)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.restart_alt,
                  size: 27.0,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Retake Quiz",
                  style: TextStyle(fontSize: 25.0, color: Colors.yellow),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Kidney()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 155, 45, 174)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.navigate_before_sharp,
                  size: 27.0,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Leave Quiz",
                  style: TextStyle(fontSize: 25.0, color: Colors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
