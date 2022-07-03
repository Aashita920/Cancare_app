// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cancare_app/breast/breast.dart';
import 'package:cancare_app/neck/neck.dart';
import 'package:flutter/material.dart';

class NeckStory extends StatelessWidget {
  const NeckStory({Key? key}) : super(key: key);

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
                        "\nAnanth Shenoy",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Text(
                          "\nI was diagnosed with cancer of the larynx in its last stage(4) in April 2000 at the ripe young age of 42. I am married to a beautiful lady, Sonya and we have two teenaged sons, Varun and Arjun.We live in a large apartment as a joint family with my mother and aunt occupying the bottom part of the home. I work as the sales head – Indian subcontinent for a German Automobile Company – one of the most reputable ones in the world. The doctors gave me only one option,as in the case of stage 3 and 4 patients-removal of the voice box !! I refused this ONLY option outright – I was born with the voice, I liked my voice, my job required I have a voice and finally but not the least – I needed my voice to tell my wife and kids how much I loved them. I was not going to give up my voice to anything called “Cancer”!!!\n\n",
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
                        "\nRhian John ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Text(
                          "\nAn eight-year-old boy who complained of neck pain while his mother washed his hair was diagnosed with a rare cancer. McKenzie John, from Swansea, is undergoing chemotherapy to treat a nasopharyngeal tumour. The youngster is being treated in Cardiff, where he is on his second of three rounds of chemotherapy. His mother Rhian John said: I am absolutely heartbroken. I never expected something like this to happen to us. The 35-year-old added: It is a hell of a lot for an eight-year-old to cope with. McKenzie is in high spirits, but he has a long road ahead of him. The NHS health care support worker said her son first complained of a painful neck in November while showering. In January, a GP dismissed his symptoms as a viral infection. Ms John said: He is always been a strong and healthy kid, and he never made a fuss or tried to skip school, so it was unusual for him to complain of this neck pain. "
                          "Whenever he tried to tip his head back to wash his hair, he had say it really hurt. -McKenzie John",
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
                      MaterialPageRoute(builder: (context) => Neck()),
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
