// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:cancare_app/homepages/types.dart';
import 'package:cancare_app/skin/skin.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SkinKnow extends StatelessWidget {
  const SkinKnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 40),
                    Image(
                      image: AssetImage(
                        'assets/images/know.jpg',
                      ),
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                    SizedBox(width: 40),
                    Image(
                      image: AssetImage(
                        'assets/images/skin.jpg',
                      ),
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Center(
                    child: Text(
                      "Skin cancer — the abnormal growth of skin cells — most often develops on skin exposed to the sun. But this common form of cancer can also occur on areas of your skin not ordinarily exposed to sunlight. There are three major types of skin cancer — basal cell carcinoma, squamous cell carcinoma and melanoma. You can reduce your risk of skin cancer by limiting or avoiding exposure to ultraviolet (UV) radiation. Checking your skin for suspicious changes can help detect skin cancer at its earliest stages. Early detection of skin cancer gives you the greatest chance for successful skin cancer treatment.",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 161, 80, 74)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: ElevatedButton(
                      child: Text('More information',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 155, 45, 174)),
                      onPressed: () async {
                        const url =
                            'https://www.mayoclinic.org/diseases-conditions/skin-cancer/symptoms-causes/syc-20377605';
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Skin()),
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
