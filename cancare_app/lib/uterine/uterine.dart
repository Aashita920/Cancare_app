// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/uterine/uterineKnow.dart';
import 'package:cancare_app/uterine/uterineSymptom.dart';
import 'package:flutter/material.dart';
import '../homepages/main.dart';
import '../homepages/types.dart';

class Uterine extends StatefulWidget {
  const Uterine({Key? key}) : super(key: key);

  @override
  State<Uterine> createState() => _UterineState();
}

class _UterineState extends State<Uterine> {
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
                "Uterine Cancer",
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
                        PageRouteBuilder(
                            transitionDuration: Duration(microseconds: 1000100),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder:
                                ((context, animation, secondaryAnimation) {
                              return UterineKnow();
                            })));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
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
                                color: Colors.yellow,
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
                SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(microseconds: 1000100),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder:
                                ((context, animation, secondaryAnimation) {
                              return UterineSymptom();
                            })));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
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
                                color: Colors.yellow,
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
            SizedBox(height: 30.0),
            Row(
              children: [
                SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(microseconds: 1000100),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder:
                                ((context, animation, secondaryAnimation) {
                              return UterineKnow();
                            })));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
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
                                color: Colors.yellow,
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
                SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(microseconds: 1000100),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder:
                                ((context, animation, secondaryAnimation) {
                              return UterineKnow();
                            })));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
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
                                color: Colors.yellow,
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
                            PageRouteBuilder(
                                transitionDuration:
                                    Duration(microseconds: 1000100),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    ((context, animation, secondaryAnimation) {
                                  return UterineKnow();
                                })));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 155, 45, 174)),
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
                                height: MediaQuery.of(context).size.height / 5,
                              ),
                              Text(
                                "Stories",
                                style: TextStyle(
                                    color: Colors.yellow,
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
                              PageRouteBuilder(
                                  transitionDuration:
                                      Duration(microseconds: 1000100),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return ScaleTransition(
                                      scale: animation,
                                      alignment: Alignment.center,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: ((context, animation,
                                      secondaryAnimation) {
                                    return Types();
                                  })));
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
                                  fontSize: 27.0, color: Colors.yellow),
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
                              PageRouteBuilder(
                                  transitionDuration:
                                      Duration(microseconds: 1000100),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return ScaleTransition(
                                      scale: animation,
                                      alignment: Alignment.center,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: ((context, animation,
                                      secondaryAnimation) {
                                    return MyApp();
                                  })));
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
                              style: TextStyle(
                                  fontSize: 27.0, color: Colors.yellow),
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
        ),
      ),
    );
  }
}
