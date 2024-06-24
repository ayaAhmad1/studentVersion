import 'package:flutter/material.dart';

import 'package:flutter_application_1/style.dart';

class bachelorPage extends StatelessWidget {
  const bachelorPage({super.key});

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
                    Text("Bachelor’s Degree",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "The college accepts high school graduates who have successfully completed at least one of the mathematics and physics subjects\n\nThe duration of study to obtain a bachelor’s degree is 4 university years divided into:\n\nClasses and field training. The college offers three study programs that lead to obtaining a bachelor’s degree.\n\n The student studies in the first and second year general studies, then studies for two years in \nOne of the following specializations: \n\nA - Computer Science\nThe field of computer science focuses on the study of algorithms, data structures, various programming languages, and scientific computers.\n\n Some fields can also be studied, such as:\nArtificial intelligence, computer graphics, databases and networks. The strength of a computer science graduate lies in his ability to solve problems related to computer efficiency and the general performance of computer applications from the perspective of the computer.\nGraduates studying this major can work in many fields such as:\n\nSoftware engineering, financial calculations, modeling, game design, computer graphics. Robotics, artificial intelligence, computer hardware development, motion graphics. Biotechnology as well as supplement postgraduate studies in all related fields By computer.\n\nB - Information systems\n\nStudents in this specialization learn everything related to information, including collecting, storing, processing, and transferring data between institutions.\nThis specialization focuses on:\nInformation in the field of business administration and decision management, as it is concerned with information systems that contribute to solving issues by using computers in business management processes to obtain information that helps in decision-making.\n\n Students in this specialization also study the basics of software development for business administration applications, decision management, and database management.\n\n The student learns how to integrate technology into the business sector through planning, analyzing and designing systems, developing application software, and supporting system users. \n\nc- Information Technology\n\nThis field focus on development, and management of computer systems, software, networks, and electronic devices to store, process, transmit, and retrieve information\n\nIt encompasses a broad range of technologies and practices that enable individuals and organizations to collect, organize, analyze, and communicate data effectively.",
                    style: whiteTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
