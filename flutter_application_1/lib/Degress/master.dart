import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class masterPage extends StatelessWidget {
  const masterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Degrees', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.all(32.13),
          child: Padding(
            padding: const EdgeInsets.all(24.14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/degree.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Master’s Degree",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "To enroll a student to obtain a master’s degree, a student must have a bachelor’s degree\n\nCollege or its equivalent with a grade of at least “good.” A graduate of any of the college’s diplomas or corresponding colleges who holds a general grade of at least “good” in the diploma can also enroll in a master’s program similar to the specialty diploma\n\nApplications for the preparatory year for the master’s degree are submitted within the dates approved by The College Council and approved by the University President.\n\nThe college organizes a study program for those admitted to the preparatory year for the master’s degree for one year (two semesters)\n\n\The pre-master’s year exams are held at the end of each semester or if the student fails for two consecutive years or fails to take the exam in two years. he will dismissed\n\nThe majority's success in academic subjects and overall grade is estimated at one grade\n\n1-0.90 % or more of the total score is excellent\n2-Very good, from 80% to less than 90% of the total score\n3-Good from 70% to less than 80% of the total grades \n4-acceptable :From 60% to less than 70% of the\n total grades.\n\nAs for the majority of failure, it is estimated by one of the following two estimates:-\n\n1-Weak: from 45 to less than 60% of the total score2.Very weak, less than 45%.\nThe exam is written in all courses (except for the prescribed research session\nThe student is considered to have failed if he does not take the written exam.\n\nThe results of each semester are announced separately, and the general grade is for both semesters at the end of each academic year",
                    style: whiteTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
