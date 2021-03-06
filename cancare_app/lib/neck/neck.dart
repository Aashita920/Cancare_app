// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/neck/neckCauses.dart';
import 'package:cancare_app/neck/neckHospitals.dart';
import 'package:cancare_app/neck/neckKnow.dart';
import 'package:cancare_app/neck/neckStories.dart';
import 'package:cancare_app/neck/neckSymptom.dart';
import 'package:cancare_app/neck/neck_main.dart';
import 'package:flutter/material.dart';
import '../homepages/types.dart';
import '../homepages/main.dart';

class Neck extends StatefulWidget {
  const Neck({Key? key}) : super(key: key);

  @override
  State<Neck> createState() => _NeckState();
}

class _NeckState extends State<Neck> {
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
                  "Neck Cancer",
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
                        MaterialPageRoute(builder: (context) => neckKnow()),
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
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NeckSymptom()),
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
                        SizedBox(
                          width: 5,
                        ),
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
                        MaterialPageRoute(builder: (context) => NeckCauses()),
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
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NeckHospital()),
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
                        SizedBox(
                          width: 5,
                        ),
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
                                builder: (context) => NeckStory()),
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
                            SizedBox(
                              width: 5,
                            ),
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
                            Navigator.push(
                              context,
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
                                style: TextStyle(
                                  fontSize: 27.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
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
