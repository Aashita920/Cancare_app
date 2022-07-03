// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/liver/liverCauses.dart';
import 'package:cancare_app/liver/liverHospital.dart';
import 'package:cancare_app/liver/liverKnow.dart';
import 'package:cancare_app/liver/liverStories.dart';
import 'package:cancare_app/liver/liverSymptom.dart';
import 'package:flutter/material.dart';
import '../homepages/main.dart';
import '../homepages/types.dart';

class Liver extends StatefulWidget {
  const Liver({Key? key}) : super(key: key);

  @override
  State<Liver> createState() => _LiverState();
}

class _LiverState extends State<Liver> {
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
                  "Liver Cancer",
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
                        MaterialPageRoute(builder: (context) => LiverKnow()),
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
                        MaterialPageRoute(builder: (context) => LiverSymptom()),
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
                        MaterialPageRoute(builder: (context) => LiverCauses()),
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
                        MaterialPageRoute(
                            builder: (context) => LiverHospital()),
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
                                builder: (context) => LiverStory()),
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
