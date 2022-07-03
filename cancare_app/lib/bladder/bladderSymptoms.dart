// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/bladder/bladder_main.dart';
import 'package:flutter/material.dart';

import 'bladder.dart';
import '../homepages/types.dart';

class BladderSymptom extends StatelessWidget {
  const BladderSymptom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Symptoms",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30.0,
                    fontFamily: 'Nexa-Bold'),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Center(
                    child: Text(
                      "a) Your urine is pink, red, or cola-colored \n\nb) You have back pain, especially on one side \n\nc) You've lost weight without even trying. \n\nd)  You're exhausted all the time. \n\nd) Pain or a burning sensation when you pee. \n\nf)Your pee habits have changed: \n\n\t\t\t\ti. You're going more often. \n\t\t\t\tii. You're experiencing pain. \n\t\t\t\tiii. You have to go right now \n\t\t\t\tiv. You have to go but \n    nothing or very little urine \n    comes out",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Nexa-Bold',
                          color: Color.fromARGB(255, 161, 80, 74)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: ElevatedButton(
                      child: Text('Take Quiz',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w800,
                              fontSize: 21)),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 155, 45, 174)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bladderMain()),
                        );
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bladder()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.navigate_before,
                        size: 30.0,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Go Back",
                        style: TextStyle(
                            fontSize: 27.0,
                            color: Colors.yellow,
                            fontFamily: 'Nexa-Bold'),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Types()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.navigate_before,
                        size: 30.0,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Types",
                        style: TextStyle(
                            fontSize: 27.0,
                            color: Colors.yellow,
                            fontFamily: 'Nexa-Bold'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
