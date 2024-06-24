import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class StandardPage extends StatelessWidget {
  final String imagePath;

  final String description;

  final String message;

  final bool isFirstPage;

  const StandardPage({
    required this.imagePath,
    required this.description,
    required this.message,
    required this.isFirstPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(31.59),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 37.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Text(
                    message,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset(imagePath),
            SizedBox(height: 30),
            Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
