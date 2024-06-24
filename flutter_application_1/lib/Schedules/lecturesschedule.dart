import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class lectureSchedule extends StatelessWidget {
  const lectureSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule", style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.all(32.13),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          width: 295.74,
          height: 309.52,
          child: Padding(
            padding: const EdgeInsets.all(11.77),
            child: Image.asset(
              "assets/schedule.png",
            ),
          ),
        ),
      ),
    );
  }
}
