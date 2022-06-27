// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/bladder/bladder.dart';
import 'package:cancare_app/breast/breast.dart';
import 'package:cancare_app/neck/neck.dart';
import 'package:cancare_app/kidney/kidney.dart';
import 'package:cancare_app/liver/liver.dart';
import 'package:cancare_app/lungs/lungs.dart';
import 'package:cancare_app/skin/skin.dart';
import 'package:cancare_app/thyroid/thyroid.dart';
import 'package:cancare_app/uterine/uterine.dart';
import 'package:flutter/material.dart';
import 'info.dart';

class Types extends StatefulWidget {
  const Types({Key? key}) : super(key: key);

  @override
  State<Types> createState() => _TypesState();
}

class _TypesState extends State<Types> {
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
            title: Center(
              child: Text(
                "Types",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 35.0,
                    fontFamily: 'Nexa-Bold'),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50.0),
                Row(
                  children: [
                    SizedBox(width: 2.0),
//------------------------------------BLADDER------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Bladder()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/bladder.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Bladder",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.0),

//------------------------------------BREAST------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Breast()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/breast.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Breast",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.0),
//------------------------------------HEAD------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Neck()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/neck.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Neck",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  children: [
                    SizedBox(width: 2.0),
//------------------------------------KIDNEY------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Kidney()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/kidney.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Kidney",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.0),
//------------------------------------LIVER------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Liver()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/liver.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Liver",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.0),
//------------------------------------LUNGS------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Lungs()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/lungs.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Lungs",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  children: [
                    SizedBox(width: 2.0),
//------------------------------------SKIN------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Skin()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/skin.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Skin",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.0),
//------------------------------------THYROID------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Thyroid()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/thyroid.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Thyroid",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.0),
//------------------------------------UTERINE------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Uterine()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(90, 151, 49, 59)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/uterine.jpg',
                                ),
                                width: 80.0,
                                height: 120.0,
                              ),
                              Text(
                                "Uterine",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
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
                      Icon(
                        Icons.navigate_before,
                        size: 30.0,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Know More",
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
