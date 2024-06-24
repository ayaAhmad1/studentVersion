import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class phdPage extends StatelessWidget {
  const phdPage({super.key});

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
                    Text("PHD Degree",
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
                    "Each member of the judging committee submits a detailed scientific report on the validity of the thesis, and the date for the oral discussion is set after the peer-reviewed reports are received.\n The committee together submits a joint report on the outcome of the discussion, and the reports are presented to the college council after presenting them to the relevant department council to recommend granting\n\n\The requirements for registration to obtain a Doctor of Philosophy degree are :\n\nHaving a master’s degree in the same specialty from the college or an equivalent degree from another college recognized by the university\n\nTo obtain the degree of Doctor of Philosophy, the following are mostly required:\n\nTo conduct innovative research that represents a new scientific addition to a topic approved by a council Postgraduate studies and research at the university, based on the proposal of the College Council, for a period of at least two years from the date of the College Council’s approval of registration.\n\nThe student must successfully pass an examination in the fields of general and specific specialization.\n\nThe date of this examination, the courses in which the student will be examined, the rules governing it, the degree of success, and the duration of the examination shall be determined by both department councils and college.\n\The student must submit a letter with the results of his research that is accepted by the judging committee Scientific.\n\nThe scientific department announces a public lecture on the subject of the dissertation before the submission, which the student will perform within the department\n\nThrough it, the main supervisor at the college submits a report on the suitability of the thesis to be presented to the judging committee, which consists of three members.",
                    style: whiteTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
