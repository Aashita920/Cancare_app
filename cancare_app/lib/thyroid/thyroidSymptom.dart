// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, file_names, unused_import

import 'package:cancare_app/homepages/types.dart';
import 'package:cancare_app/thyroid/thyroid.dart';
import 'package:cancare_app/thyroid/thyroid_main.dart';
import 'package:flutter/material.dart';

class ThyroidSymptom extends StatelessWidget {
  const ThyroidSymptom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      "a) A lump (nodule) that can be felt through the skin on your neck\n\nb) A lump (nodule) that can be felt through the skin on your neck\n\nc) A feeling that close-fitting shirt collars are becoming too tight\n\nd) Changes to your voice, including increasing hoarseness\n\ne) Difficulty swallowing\n\nf) Swollen lymph nodes in your neck\n\ng) Pain in your neck and throat",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
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
                              builder: (context) => ThyroidMain()),
                        );
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Thyroid()),
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
                        style: TextStyle(fontSize: 27.0, color: Colors.yellow),
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
                        style: TextStyle(fontSize: 27.0, color: Colors.yellow),
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
