import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class QuestionPage extends StatelessWidget {
  final String question;
  final List<String> options;
  final int? selectedAnswer;
  final ValueChanged<int> onSelectAnswer;
  final Color mainColor;
  final Color secondaryColor;

  QuestionPage({
    required this.question,
    required this.options,
    required this.selectedAnswer,
    required this.onSelectAnswer,
    required this.mainColor,
    required this.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            question,
            style: headerTextStyle,
          ),
        ),
        Expanded(
          child: ListView(
            children: options.asMap().entries.map((entry) {
              int index = entry.key;
              String option = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ElevatedButton(
                  onPressed: () => onSelectAnswer(index),
                  style: ElevatedButton.styleFrom(
                    foregroundColor:
                        selectedAnswer == index ? Colors.white : mainColor,
                    backgroundColor:
                        selectedAnswer == index ? mainColor : secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    option,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
