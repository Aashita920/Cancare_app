// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class ThyroidKnow extends StatelessWidget {
  const ThyroidKnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Thyroid Cancer - Know About",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}