// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/homepages/info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa-Bold'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: const Center(
              child: Text(
                "CanCare",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 35.0,
                ),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/images/wallpaper.png',
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width * 1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          color: Color(0xffc66b3d),
                          fontSize: 55.0,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Welcome to \nCancer \nAwareness App",
                            style: TextStyle(
                                color: Color(0xff26495c),
                                fontSize: 45.0,
                                fontFamily: 'Nexa-Bold'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KnowMore()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 155, 45, 174)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Know More",
                          style:
                              TextStyle(fontSize: 25.0, color: Colors.yellow),
                        ),
                        Icon(
                          Icons.navigate_next_sharp,
                          size: 30.0,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
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
