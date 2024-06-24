import 'package:flutter/material.dart';
import 'package:flutter_application_1/Schedules/examSchedule.dart';
import 'package:flutter_application_1/Schedules/lecturesschedule.dart';
import 'package:flutter_application_1/style.dart';

class schedulePage extends StatefulWidget {
  const schedulePage({super.key});

  @override
  State<schedulePage> createState() => _schedulePageState();
}

class _schedulePageState extends State<schedulePage> {
  Widget buildMaterialButton(
    String image,
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
          Image.asset(image),
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
        title: Text('Schedules', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          margin: EdgeInsets.all(32.13),
          child: Column(
            children: [
              buildMaterialButton(
                'assets/lecture.png',
                "Lectures Schedule",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExamSchedule()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "assets/exam.png",
                "Exams Schedule",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lectureSchedule()),
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
