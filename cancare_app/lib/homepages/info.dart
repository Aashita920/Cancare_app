// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:cancare_app/homepages/main.dart';
import 'package:cancare_app/homepages/types.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class KnowMore extends StatefulWidget {
  const KnowMore({Key? key}) : super(key: key);

  @override
  State<KnowMore> createState() => _KnowMoreState();
}

class _KnowMoreState extends State<KnowMore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa-Bold'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Know About",
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
            Column(children: [
              SizedBox(height: 15),
              Center(
                child: Text(
                  '"',
                  style: TextStyle(
                    fontFamily: 'Nexa-Bold',
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Text(
                    "Cancer is quite common in both developing as well as developed countries, but awareness is yet poor among the general population. Poor awareness may lead to poor uptake of screening modalities and delay in diagnosis.",
                    style: TextStyle(
                      fontFamily: 'Nexa-Bold',
                      fontSize: 20,
                      color: Color.fromARGB(255, 166, 73, 42),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  '"',
                  style: TextStyle(
                    fontFamily: 'Nexa-Bold',
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Text(
                    "Cancer awareness is the key to early detection and better health seeking behaviour. Poor awareness lead to poor uptake of screening modalities and delay in treatment. Cancer is a global disease and spreading rapidly.",
                    style: TextStyle(
                      fontFamily: 'Nexa-Bold',
                      fontSize: 25,
                      color: Color.fromARGB(255, 166, 73, 42),
                    ),
                  ),
                ),
              ),
              // child: Text(
              //   "\tCancer awareness is \n\tthe key to early \n\tdetection and better \n\thealth seeking \n\tbehaviour. Poor \n\tawareness lead to \n\tpoor uptake of \n\tscreening modalities \n\tand delay in \n\ttreatment. Cancer is a \n\tglobal disease and \n\tspreading rapidly.",
              //   style: TextStyle(
              //       color: Color.fromARGB(255, 173, 136, 71), fontSize: 35.0),
              // ),

              SizedBox(height: 20), SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    const url =
                        'https://www.indiancancersociety.org/what-do-we-do/awareness.aspx';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "More information",
                        style: TextStyle(fontSize: 25.0, color: Colors.yellow),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        size: 31.0,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Types()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(fontSize: 25.0, color: Colors.yellow),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.navigate_next,
                        size: 27.0,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.navigate_before_sharp,
                        size: 27.0,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Go Back",
                        style: TextStyle(fontSize: 25.0, color: Colors.yellow),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
