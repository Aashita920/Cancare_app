// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class BladderStory extends StatelessWidget {
  const BladderStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Bladder Cancer - Real Stories",
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
