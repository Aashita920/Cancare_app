// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, deprecated_member_use, unused_field

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bladderHospitals.dart';

class blkbladder extends StatefulWidget {
  blkbladder({Key? key}) : super(key: key);

  @override
  State<blkbladder> createState() => _blkbladderState();
}

class _blkbladderState extends State<blkbladder> {
  late Future<void> _launched;
  Future<void> _makecall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                "BLK Speciality Hospital",
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
                // SizedBox(
                //   height: 35,
                // ),
                Image(
                  image: AssetImage(
                    'assets/images/BLK.jpg',
                  ),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height / 2,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    "B.L Kapoor Hospital is one of the largest and well reputed tertiary care healthcare facility located in New Delhi, the capital city of India. The multi-super speciality hospital has a top-notch infrastructure with 650 inpatient beds, 125 critical care beds and 17 dedicated operation theatres.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 222, 62, 13),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    "Address:\n          BLK-Max Super Speciality Hospital \n          Pusa Road, New Delhi-110005",
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text('More information',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w700,
                          fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 45, 174)),
                  onPressed: () async {
                    const url = 'https://www.blkmaxhospital.com/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage(
                    'assets/images/BLK2.png',
                  ),
                ),
                SizedBox(height: 5),
                Image(
                  image: AssetImage(
                    'assets/images/BLK3.png',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _launched = _makecall('tel:+91 -11-3040 3040');
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 155, 45, 174)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.call,
                          size: 30.0,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.call_made,
                          size: 15.0,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Helpline",
                          style:
                              TextStyle(fontSize: 27.0, color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _launched = _makecall('tel:+91113065 3030');
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 155, 45, 174)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.call,
                          size: 30.0,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.call_made,
                          size: 15.0,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Ambulance",
                          style:
                              TextStyle(fontSize: 27.0, color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BladderHospital()),
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
                          style:
                              TextStyle(fontSize: 27.0, color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
