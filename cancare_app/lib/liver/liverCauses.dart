// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, deprecated_member_use

import 'package:cancare_app/breast/breast.dart';
import 'package:cancare_app/liver/liver.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../homepages/types.dart';

class LiverCauses extends StatelessWidget {
  const LiverCauses({Key? key}) : super(key: key);

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
                      "1.Being overweight or having\n   obesity.\n\n2.Having a long-term hepatitis\n   B virus or hepatitis C virus\n   infection.\n\n3.Smoking cigarettes.\n\n4.Drinking alcohol.\n\n5.Having cirrhosis (scarring of\n   the liver, which can also be\n   caused by hepatitis and \n   alcohol use).\n\n6.Having nonalcoholic fatty \n   liver disease (extra fat in the\n   liver that is not caused by \n   alcohol).\n\n7.Having diabetes.\n\n8.Having hemochromatosis, a \n   condition where the body \n   takes up and stores more \n   iron than it needs.\n\n9.Eating foods that have \n   aflatoxin (a fungus that can \n   grow on foods, such as \n   grains and nuts that have \n   not been stored properly).",
                      style: TextStyle(
                          fontSize: 24,
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
                            'https://www.mayoclinic.org/diseases-conditions/breast-cancer/symptoms-causes/syc-20352470';
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
                      MaterialPageRoute(builder: (context) => Liver()),
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
