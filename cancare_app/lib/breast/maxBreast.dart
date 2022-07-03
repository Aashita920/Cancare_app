// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, deprecated_member_use, unused_field

import 'package:cancare_app/breast/breastHospital.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Maxbreast extends StatefulWidget {
  Maxbreast({Key? key}) : super(key: key);

  @override
  State<Maxbreast> createState() => _MaxbreastState();
}

class _MaxbreastState extends State<Maxbreast> {
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
      theme: ThemeData(fontFamily: 'Nexa -Bold'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                "Max Hospital",
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
                    'assets/images/max1.jpg',
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
                    "Max Hospital, Saket was founded in 2006. \nThis Hospital is recognized as NABH & NABL under Super Specialty Hospital.\n It specializes in Cardiac Surgery, Aesthetic and Reconstructive Surgery, Cancer Care, Orthopedics, Pediatrics, Mental Health and Behavioral Sciences, Endocrinology, ENT, Neurosciences, and much more.\n Max Hospital’s specialty clinics are Women’s Heart Clinic, Headache Clinic, Movement Disorder Clinic, Multiple Sclerosis Clinic, Geriatric Neurology Clinic & Electrophysiology Clinic.\nThis hospital is honored with the First Global Green OT Accreditation.",
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
                    "Address:\n          Press Enclave Road, Mandir Marg, \n          Saket New Delhi \n          Delhi 110017 \n          India",
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
                        'https://medsurgeindia.com/hospital/max-super-speciality-hospital-saket-new-delhi/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage(
                    'assets/images/max2.jpg',
                  ),
                ),
                SizedBox(height: 5),
                Image(
                  image: AssetImage(
                    'assets/images/max3.jpg',
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
                        _launched = _makecall('tel: +91 011-40554055  ');
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
                        _launched = _makecall('tel:+91 011-26515050');
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
