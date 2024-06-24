import 'package:flutter/material.dart';
import 'package:flutter_application_1/Questionnaires/questionsPage.dart';
import 'package:flutter_application_1/style.dart';

class StartQuestionnaire extends StatefulWidget {
  const StartQuestionnaire({super.key});

  @override
  State<StartQuestionnaire> createState() => _StartQuestionnaireState();
}

class _StartQuestionnaireState extends State<StartQuestionnaire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaire', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(31.59),
        width: double.infinity,
        height: 210,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey ..\nWe have some Questions\nfor you..",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.white, width: 2),
                ),
                height: 46,
                minWidth: double.infinity,
                color: backgroundColor,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuestionsPage()));
                },
                child: Text(
                  "Let’s Start",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
