// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, deprecated_member_use, unused_field

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bladderHospitals.dart';

class Kokilabenbladder extends StatefulWidget {
  Kokilabenbladder({Key? key}) : super(key: key);

  @override
  State<Kokilabenbladder> createState() => _KokilabenbladderState();
}

class _KokilabenbladderState extends State<Kokilabenbladder> {
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
                "Kokilaben Dhirubhai \n Ambani Hospital",
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
                    "Kokilaben Dhirubhai Ambani Hospital, besides conducting various health camps at different locations, also holds several teaching programmes for lay people in first aid, life support and various areas of public health importance as a part of community outreach activities. Furthermore, Kokilaben Hospital has been supporting the initiative of helping the babies and children affected by congenital heart disorders through the 'Precious Heart' foundation – a social initiative that presents you with an opportunity to save a little heart, and to give someone a chance to live again.",
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
                    "Address:\n          Rao Saheb, Achutrao \n          Patwardhan Marg, Four \n          Bungalows, Andheri West\n          Mumbai 400053\n          India",
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
                    const url = 'https://www.kokilabenhospital.com';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage(
                    'assets/images/kokilaben2.png',
                  ),
                ),
                SizedBox(height: 5),
                Image(
                  image: AssetImage(
                    'assets/images/kokilaben3.jpg',
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
                        _launched = _makecall('tel:+912242699999');
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
                        _launched = _makecall('tel:+91 022 4269 6969');
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
