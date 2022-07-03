// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/bladder/MedantaBladder.dart';
import 'package:cancare_app/bladder/bladder.dart';
import 'package:cancare_app/bladder/blkBladder.dart';
import 'package:cancare_app/bladder/kokilabenBladder.dart';
import 'package:flutter/material.dart';

class BladderHospital extends StatelessWidget {
  const BladderHospital({Key? key}) : super(key: key);

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
                          MaterialPageRoute(builder: (context) => blkbladder()),
                        );
                      },
                      child: Image(
                        image: AssetImage(
                          'assets/images/BLK.png',
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                    Text(
                      "\nBLK Super Speciality Hospital\n New Delhi, India\n",
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
                              builder: (context) => Medantabladder()),
                        );
                      },
                      child: Image(
                        image: AssetImage(
                          'assets/images/Medanta.png',
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                    Center(
                      child: Text(
                        "\nMedanta - The Medicity Hospital",
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
                            builder: (context) => Kokilabenbladder()));
                      },
                      child: Image(
                        image: AssetImage(
                          'assets/images/kokilaben.jpg',
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                    Center(
                      child: Text(
                        "\nKokilaben Dhirubhai Ambani Hospital ",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Mumbai, India",
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
                            MaterialPageRoute(builder: (context) => Bladder()),
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
