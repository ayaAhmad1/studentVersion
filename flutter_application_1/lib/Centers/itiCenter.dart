import 'package:flutter/material.dart';

import 'package:flutter_application_1/style.dart';

class itiCenter extends StatelessWidget {
  const itiCenter({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle myTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Centers', style: headerTextStyle),
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
                    Image.asset("assets/center.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "ITI Center",
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
                    "With in the framework of the Ministry of Communications and Information Technology’s strategy for developing human resources in the field of information technology, it is worth noting the role of the Ministry’s Information Technology Institute in contributing to supporting industry in Egypt by designing and implementing a professional training program with the aim of graduating generations of professionals to work in the fields of information technology\n\nCommunications and spreading awareness of modern global trends in these fields.\n\nWhereas one of the tasks and roles of the Institute is to spread and distribute the scope of its professional program geographically throughout the Arab Republic of Egypt to raise the skills of young university graduates in the regions to use information technology and qualify them to work in technology companies.\n\nLocal and regional information and communications\n\nThe Institute established a protocol for scientific cooperation with the Faculty of Computers and Information, representing Mansoura University as a scientific and governmental body. The legislator assigned it to higher education and scientific research, and entrusted it with serving the community and advancing it in the field of higher education, to benefit from the field of training in information technology and professional computer programs to qualify university graduates as In particular, and other universities in general, to confront the labor market and create\n\nJob opportunities for them in public and private sector companies.\n\nAccording to the cooperation protocol, the institute occupies the fourth floor of the College of Computers building and new information",
                    style: myTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
