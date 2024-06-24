import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class diplomaPage extends StatelessWidget {
  const diplomaPage({super.key});

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
                      "Diploma’s Degree",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "In order for a student to be registered to obtain any postgraduate degree, he must have a bachelor’s degree in one of the college’s specializations from an Egyptian university or an equivalent degree from another scientific institute recognized by the university.\n Applicants for each diploma separately will be given an admission exam according to the curriculum determined and announced by the College Council, and admission will be according to the order of those who succeed in the competition exam\n\nAdmission: Applications for admission are submitted on the dates approved by the College Council.\n The duration of study to obtain a diploma degree is two years, divided into four semesters.\n The  Time tables show the distribution of study courses among the different semesters, the diploma level, the number of hours prescribed, and the examination time for each course.\n The College Council approves that\nOn the proposal of the relevant department councils regarding the topics taught in each course.\n The student is prohibited from taking the written exam for any course if it is not fulfilled\n Attendance rate of no less than 75\n\n The study and examination system will be as follows:\n\n The exam is written in all courses except the project course.\n The student is considered to have failed if he does not take the written exam.\n Written exams are conducted at the end of each semester.\n The results of each semester are announced separately, and the general grade is for both semesters together , At the end of each academic year\n\nThe student is transferred from the first year to the second year if he passes the A grade, is absent with an excuse, or fails the courses.\nwithout an acceptable excuse) in the case of no.\n About two rapporteurs from the first year\n\n The student takes the written exam in the courses he missed with students who are studying this course\n\nDuring the month of November of each year, a second round examination is held for students in the second year who have fallen behind in no more than two courses from the first year, second year, and second year ",
                    style: whiteTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
