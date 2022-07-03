// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, deprecated_member_use, unused_field

import 'package:cancare_app/breast/breastHospital.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Fortisbreast extends StatefulWidget {
  Fortisbreast({Key? key}) : super(key: key);

  @override
  State<Fortisbreast> createState() => _FortisbreastState();
}

class _FortisbreastState extends State<Fortisbreast> {
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
                "Fortis Hospital",
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
                    'assets/images/fortis1.jpg',
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
                    "Established in 1996, brand Fortis now occupies 55 facilities in line, offering health facilities within India and abroad. \nFamous as the ‘Mecca of Healthcare’ for the Asia Pacific region, this health institute is graded as the second in a global study of the 30 most technologically promoted hospitals in the world, managed by ‘topmastersinhealthcare.com. \nThis NABH certified multi-specialty tertiary care hospital is known for its dexterity in Cardiac Sciences, Renal Sciences, Neurosciences, Gastro Sciences, Emergency & Trauma, Critical Care, and Organ Transplants. Bone & Joint.",
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
                    "Address:\n          Fortis Hospital Gurgaon \n          Sector - 44, Opposite HUDA City \n          Centre Gurgaon Haryana 122002 \n          India",
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
                    const url =
                        'https://medsurgeindia.com/hospital/fortis-hospital-gurgaon/#hospital-short-bio';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage(
                    'assets/images/fortis3.jpg',
                  ),
                ),
                SizedBox(height: 5),
                Image(
                  image: AssetImage(
                    'assets/images/fortis2.jpg',
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
                        _launched = _makecall('tel: +91 76694 16401');
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
                        _launched = _makecall('tel:+91 105010');
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
                            builder: (context) => BreastHospital()),
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
