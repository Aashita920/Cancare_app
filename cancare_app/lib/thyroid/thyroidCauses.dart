// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, deprecated_member_use

import 'package:cancare_app/breast/breast.dart';
import 'package:cancare_app/thyroid/thyroid.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../homepages/types.dart';

class ThyroidCauses extends StatelessWidget {
  const ThyroidCauses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa - Bold'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Causes",
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
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Center(
                    child: Text(
                      "Thyroid cancer happens when there's a change to the DNA inside thyroid cells which causes them to grow uncontrollably and produce a lump. It's not usually clear what causes this change, but there are a number of things that can increase your risk.",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 161, 80, 74)),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Center(
                    child: Text(
                      "These include:\n\n1. Other thyroid conditions, such as an inflamed thyroid or goitre – but not an overactive thyroid or underactive thyroid.\n2. A family history of thyroid cancer – your risk is higher if a close relative has had thyroid cancer.\n3.Radiation exposure in child-hood – such as radiotherapy.\n4. Obesity\n5. A bowel condition called familial adenomatous polyposis (FAP).\n6. Acromegaly – a rare condition where the body produces too much growth hormone",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 161, 80, 74)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      child: Text('More information',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w700,
                              fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 155, 45, 174)),
                      onPressed: () async {
                        const url =
                            'https://www.nhs.uk/conditions/thyroid-cancer/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Thyroid()),
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
                        style: TextStyle(fontSize: 27.0, color: Colors.yellow),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
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
