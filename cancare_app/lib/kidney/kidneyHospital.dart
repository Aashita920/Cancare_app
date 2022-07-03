// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/bladder/bladder.dart';
import 'package:cancare_app/breast/fortisBreast.dart';
import 'package:cancare_app/breast/maxBreast.dart';
import 'package:cancare_app/breast/narayanBreast.dart';
import 'package:cancare_app/kidney/kidney.dart';
import 'package:flutter/material.dart';

class KidneyHospital extends StatelessWidget {
  const KidneyHospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Hospital",
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
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Fortisbreast()),
                        );
                      },
                      child: Image(
                        image: AssetImage(
                          'assets/images/fortis.jpg',
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                    Text(
                      "\nFortis Hospital  \n Gurgaon, Haryana, India\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Narayanbreast()),
                        );
                      },
                      child: Image(
                        image: AssetImage(
                          'assets/images/narayana.jpg',
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                    Center(
                      child: Text(
                        "\nNarayana Superspeciality Hospital ",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Gurgaon, Haryana, India\n",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Maxbreast()));
                      },
                      child: Image(
                        image: AssetImage(
                          'assets/images/max.png',
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                    Center(
                      child: Text(
                        "\n Max Super Speciality Hospital",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Saket, New Delhi, India\n",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Kidney()),
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
                              style: TextStyle(
                                  fontSize: 27.0,
                                  color: Colors.yellow,
                                  fontFamily: "Nexa-Bold"),
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
