import 'package:flutter/material.dart';
import 'package:flutter_application_1/Centers/centers.dart';
import 'package:flutter_application_1/Courses/academicCourses.dart';
import 'package:flutter_application_1/Degress/degress.dart';
import 'package:flutter_application_1/Quality%20Standerds/qualityStandards.dart';
import 'package:flutter_application_1/Questionnaires/startQuestionnaire.dart';
import 'package:flutter_application_1/Schedules/schedule.dart';
import 'package:flutter_application_1/maps.dart';
import 'package:flutter_application_1/profile/profile.dart';
import 'package:flutter_application_1/style.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Widget buildButton(
    String asset,
    String text,
    VoidCallback onPressed,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: secondaryColor,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset(
              asset,
            ),
            SizedBox(width: 10),
            Text(text, style: mainTextStyle),
          ],
        ),
      ),
      width: 160,
      height: 65,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profilePage()));
                },
                child: Image.asset("assets/profile.png")),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Hello..",
            style: GoogleFonts.balooTammudu2(
              textStyle: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 175.45,
            margin: EdgeInsets.only(
                top: 10.28, bottom: 30.28, left: 30.28, right: 30.28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(children: [
                Image.asset(
                  "assets/welcome.png",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome..",
                          style: GoogleFonts.balooTamma2(
                            textStyle: TextStyle(
                                fontSize: 28,
                                color: mainColor,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          "Let’s Learn more about\n Quality Standards",
                          style: GoogleFonts.balooTamma2(
                            textStyle: TextStyle(
                                fontSize: 19,
                                color: mainColor,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                backgroundColor),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => qualityStandards()));
                          },
                          child: Text(
                            "Let’s Go",
                            style: GoogleFonts.balooTammudu2(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(32, 0, 32, 32),
            child: Column(
              children: [
                Row(
                  children: [
                    buildButton("assets/1.png", "Answer\nQuestions", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StartQuestionnaire()));
                    }),
                    SizedBox(width: 26),
                    buildButton("assets/2.png", "Make a\nComplaint", () {}),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    buildButton("assets/3.png", "Quality\nStandards", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => qualityStandards()));
                    }),
                    SizedBox(width: 26),
                    buildButton("assets/4.png", "Academic\nSchedules", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => schedulePage()));
                    }),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    buildButton("assets/5.png", "Academic\nCourses", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => academicCourses()));
                    }),
                    SizedBox(width: 26),
                    buildButton("assets/6.png", "College\nMaps", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mapsPage()));
                    }),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    buildButton("assets/7.png", "Academic\nDegrees", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Degrees()));
                    }),
                    SizedBox(width: 26),
                    buildButton("assets/8.png", "College\nCenters", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => certifiedCenter()));
                    }),
                  ],
                ),
                SizedBox(height: 30),
                Image.asset("assets/maarf.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
