// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, deprecated_member_use, unused_field

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bladderHospitals.dart';

class Medantabladder extends StatefulWidget {
  Medantabladder({Key? key}) : super(key: key);

  @override
  State<Medantabladder> createState() => _MedantabladderState();
}

class _MedantabladderState extends State<Medantabladder> {
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
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Medanta - The Medicity",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600),
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
                    'assets/images/Medanta1.png',
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
                    "Medanta Hospital was founded in 2009 by the renowned Cardiovascular and Cardiothoracic surgeon, Dr. NareshTrehan. The hospital is both NABH and NABL accredited. Centers of excellence include the Heart Institute, Institute of Neurosciences, Bone & Joint Institute, Kidney & Urology Institute, Cancer Institute and Division of Medical Oncology and Hematology. It is the first hospital in the country that offers Robotic Surgeries in Cardiology, Urology and Gynaecology. Awarded as the Best Multispecialty Hospital by Asia’s First Bloodless Bone Marrow Transplant HealthCare Global Enterprises (HCG) in 2010. Awarded the VC Circle Healthcare Awards for Single Specialty Healthcare Entity category in 2013.",
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
                    "Address:\n          Medanta - The Medicity\n          Gurgaon 122001\n          India",
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
                    const url = 'https://www.medanta.org';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage(
                    'assets/images/Medanta2.png',
                  ),
                ),
                SizedBox(height: 5),
                Image(
                  image: AssetImage(
                    'assets/images/Medanta3.png',
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
                        _launched = _makecall('tel:+91 1068');
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
                        _launched = _makecall('tel:+91 1244141414');
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
