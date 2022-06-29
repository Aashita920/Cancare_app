// ignore_for_file: file_names, prefer_const_constructors

import 'package:cancare_app/bladder/bladder.dart';
import 'package:flutter/material.dart';

class BladderStory extends StatelessWidget {
  const BladderStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa'),
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
                          'assets/images/bladderStroy.png',
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        // height: MediaQuery.of(context).size.height / 3.2,
                      ),
                      Text(
                        "\nPN Kamala",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Text(
                          "\nA native of Sivakasi, 81-year-old PN Kamala was enjoying the second innings of her life at her home in the company of her grandchildren. Being the head of the family, Kamala was equally active in household decisions and worked along with her son and daughter-in-law. In 2005, due to some uneasiness, Kamala decided to go for a health check-up. This was when she was diagnosed with breast cancer. The news broke Kamala’s lively personality as she started counting days. This was an entirely different challenge for her. Thinking she would live for another six months, she started preparing her will. In this state of hopelessness, Kamala’s daughter-in-law, Seetha, decided to take control of her treatment and care. Along with her, Kamala’s son also made sure she was around a positive environment, along with proper emotional support. The treatment was multi-fold and needed constant monitoring and care.\n\n",
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
                          'assets/images/bladderStroy2.png',
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        // height: MediaQuery.of(context).size.height / 3.2,
                      ),
                      Text(
                        "\nAnni Rajani Sharma",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Text(
                          "\n Her treatment began in September 2013 and went on till April 2014. Anni says that this eight-month period was not without its challenges. Treating cancer takes time. It’s not a one-day surgery or a 10-day course of treatment. It’s a long drawn out period of treatment and recovery, and the side effects can go on for years. I would be lying if I said that it was an easy phase and that I could go through it again. After the surgery to remove the lump in her breast, Anni was prescribed six cycles of chemotherapy every 21 days, following which she had to undergo 36 sessions of radiation. “I still have to go for frequent follow-up tests. Cancer can recur in the first two years after recovery, and there is a continued risk for up to five years.",
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
                      MaterialPageRoute(builder: (context) => Bladder()),
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
