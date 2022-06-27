// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/bladder/bladderCauses.dart';
import 'package:cancare_app/bladder/bladderHospitals.dart';
import 'package:cancare_app/bladder/bladderKnow.dart';
import 'package:cancare_app/bladder/bladderStories.dart';
import 'package:cancare_app/bladder/bladderSymptoms.dart';
import 'package:cancare_app/breast/breastKnow.dart';
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
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
              backgroundColor: Color.fromARGB(255, 102, 27, 115),
              title: Center(
                child: Text(
                  "Breast Cancer",
                  style: TextStyle(color: Colors.yellow, fontSize: 35.0),
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
                          PageRouteBuilder(transitionsBuilder:
                              (context, animation, animationTime, child) {
                            return ScaleTransition(
                              scale: animation,
                              alignment: Alignment.center,
                              child: child,
                            );
                          }, pageBuilder:
                              ((context, animation, secondaryAnimation) {
                            return BreastKnow();
                          })));
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
                          PageRouteBuilder(transitionsBuilder:
                              (context, animation, animationTime, child) {
                            return ScaleTransition(
                              scale: animation,
                              alignment: Alignment.center,
                              child: child,
                            );
                          }, pageBuilder:
                              ((context, animation, secondaryAnimation) {
                            return breastSymptom();
                          })));
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
                          PageRouteBuilder(transitionsBuilder:
                              (context, animation, animationTime, child) {
                            return ScaleTransition(
                              scale: animation,
                              alignment: Alignment.center,
                              child: child,
                            );
                          }, pageBuilder:
                              ((context, animation, secondaryAnimation) {
                            return BladderCauses();
                          })));
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
                          PageRouteBuilder(transitionsBuilder:
                              (context, animation, animationTime, child) {
                            return ScaleTransition(
                              scale: animation,
                              alignment: Alignment.center,
                              child: child,
                            );
                          }, pageBuilder:
                              ((context, animation, secondaryAnimation) {
                            return BladderHospital();
                          })));
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
                              PageRouteBuilder(transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                return ScaleTransition(
                                  scale: animation,
                                  alignment: Alignment.center,
                                  child: child,
                                );
                              }, pageBuilder:
                                  ((context, animation, secondaryAnimation) {
                                return BladderStory();
                              })));
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
