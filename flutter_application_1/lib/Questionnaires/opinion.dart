import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class OpinionPage extends StatelessWidget {
  final TextEditingController likeController;
  final TextEditingController dislikeController;

  OpinionPage({
    required this.likeController,
    required this.dislikeController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "What do you like about this year's content ?",
            style: headerTextStyle,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          controller: likeController,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: 'I like it because...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: mainColor),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "What don't you like about this year's content ?",
          style: headerTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: dislikeController,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "I don't like it because...",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: backgroundColor),
            ),
          ),
        ),
      ],
    );
  }
}
