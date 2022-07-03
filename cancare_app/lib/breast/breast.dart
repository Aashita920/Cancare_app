// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/breast/breastCauses.dart';
import 'package:cancare_app/breast/breastHospital.dart';
import 'package:cancare_app/breast/breastKnow.dart';
import 'package:cancare_app/breast/breastStories.dart';
import 'package:cancare_app/breast/breastSymptoms.dart';
import 'package:cancare_app/homepages/main.dart';
import 'package:cancare_app/homepages/types.dart';
import 'package:flutter/material.dart';

class Breast extends StatefulWidget {
  const Breast({Key? key}) : super(key: key);

  @override
  State<Breast> createState() => _BreastState();
}

class _BreastState extends State<Breast> {
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
                  "Breast Cancer",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30.0,
                      fontFamily: 'Nexa-Bold'),
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(height: 30.0),
              Row(
                children: [
                  SizedBox(width: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BreastKnow()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(128, 116, 31, 40)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/know.jpg',
                              ),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                            Text(
                              "Know About",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  SizedBox(width: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => breastSymptom()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(128, 116, 31, 40)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/symptoms.jpg',
                              ),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                            Text(
                              "Symptoms",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  SizedBox(width: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BreastCauses()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(128, 116, 31, 40)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 10),
                        Column(
                          children: [
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage(
                                'assets/images/causes.png',
                              ),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                            Text(
                              "Causes",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(width: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BreastHospital()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(128, 116, 31, 40)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/hospital.png',
                              ),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                            Text(
                              "Hospitals",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BreastStory()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(128, 116, 31, 40)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 8),
                            Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/images/stories.jpg',
                                  ),
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                ),
                                Text(
                                  "Stories",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Types()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(128, 116, 31, 40)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.navigate_before,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "Types",
                                style: TextStyle(fontSize: 27.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(128, 116, 31, 40)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.navigate_before,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(fontSize: 27.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
