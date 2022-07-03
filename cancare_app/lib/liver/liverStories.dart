// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/breast/breast.dart';
import 'package:cancare_app/liver/liver.dart';
import 'package:flutter/material.dart';

class LiverStory extends StatelessWidget {
  const LiverStory({Key? key}) : super(key: key);

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
                  "Real Stories",
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
                      SizedBox(width: 5),
                      Image(
                        image: AssetImage(
                          'assets/images/breaststory1.png',
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        // height: MediaQuery.of(context).size.height / 3.2,
                      ),
                      Text(
                        "\nShrestha Mittal",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Text(
                          "\nCancer, the disease and the word, is commonly associated with malignancy and used to describe a destructive condition that is hard to control. But Shreshta Mittal, a 34-year-cancer survivor, has a different take. She describes cancer as an experience she is grateful for, a blessing that led her to her life’s calling. When first diagnosed with stage 3 breast cancer in mid-2019, Mittal, of Mumbai in India, felt anything but grateful, though. She inadvertently discovered a small lump in her left breast. “I thought the lump was a harmless cyst and ignored it.” Three months later, when the lump felt bigger and harder, Mittal went to the hospital, her husband at her side.\n\n",
                          style: TextStyle(
                              color: Color.fromARGB(255, 222, 62, 13),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(width: 5),
                      Image(
                        image: AssetImage(
                          'assets/images/breaststory2.png',
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        // height: MediaQuery.of(context).size.height / 3.2,
                      ),
                      Text(
                        "\nPremal Badiani",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Text(
                          "\nBreast cancer survivors Marry Ann DAchille and Ozlem turned showstoppers for Premal Badiani during her show at the New York Fashion Week (NYFW). The Indian designer paid tribute to real life fighters and survivors through her collection. Her collection, titled Valentia that means brave in Latin, was feminine and sexy, encouraging women, especially the breast cancer fighters and survivors, to embrace their womanhood with boldness, confidence and a touch of sensuality. “I wanted to force people to re imagine the disease that is supposed to make a woman feel unattractive and lose her womanhood. My aim with this collection was to showcase the breast cancer fighters and survivors as any other woman – strong, sexy and sensuous while they took each step on the runway,” the designer said in a statement.",
                          style: TextStyle(
                              color: Color.fromARGB(255, 222, 62, 13),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
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
                        style: TextStyle(
                            fontSize: 27.0,
                            color: Colors.yellow,
                            fontFamily: 'Nexa-Bold'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
