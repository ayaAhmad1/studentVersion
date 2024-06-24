import 'package:flutter/material.dart';

import 'package:flutter_application_1/Courses/fifthCourse.dart';

import 'package:flutter_application_1/Courses/firstCourse.dart';

import 'package:flutter_application_1/Courses/fourthCourse.dart';

import 'package:flutter_application_1/Courses/secondCourse.dart';

import 'package:flutter_application_1/Courses/thirdCourse.dart';

import 'package:flutter_application_1/style.dart';

class academicCourses extends StatefulWidget {
  const academicCourses({super.key});

  @override
  State<academicCourses> createState() => _academicCoursesState();
}

class _academicCoursesState extends State<academicCourses> {
  Widget buildMaterialButton(
    String text,
    VoidCallback onPressed,
  ) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      minWidth: double.infinity,
      height: 73.69,
      color: backgroundColor,
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(
            "assets/course.png",
          ),
          SizedBox(width: 15.0),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          margin: EdgeInsets.all(32.24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "4th Year - IT",
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              buildMaterialButton(
                "Bioinformatics",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => firstCourse()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "Computer Vision",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => secondCourse()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "Multimedia",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => thirdCourse()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "Mobile Computing",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fourthCourse()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "Pattern Recognition",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fifthCourse()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
