import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class thirdCourse extends StatelessWidget {
  const thirdCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          margin: EdgeInsets.all(32.24),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "4th Year - IT",
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 650,
              child: Padding(
                padding: const EdgeInsets.all(20.14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/course.png"),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          "Multimedia",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 118,
                      width: double.infinity,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Text('Grades', style: primaryTextStyle),
                        ),
                        Table(
                          border: TableBorder(
                            top: BorderSide(width: 3, color: secondaryColor1),
                            horizontalInside:
                                BorderSide(width: 3, color: secondaryColor1),
                            verticalInside:
                                BorderSide(width: 3, color: secondaryColor1),
                          ),
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Mid',
                                        style: secondaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'P-E',
                                        style: secondaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'V-E',
                                        style: secondaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Final',
                                        style: secondaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Total',
                                        style: secondaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      '10',
                                      style: secondaryTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '20',
                                      style: secondaryTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      '10',
                                      style: secondaryTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      '10',
                                      style: secondaryTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      '100',
                                      style: secondaryTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 180,
                      width: double.infinity,
                      child: Column(children: [
                        Table(
                          border: TableBorder(
                            horizontalInside:
                                BorderSide(width: 3, color: secondaryColor1),
                            verticalInside:
                                BorderSide(width: 3, color: secondaryColor1),
                          ),
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Description',
                                        style: primaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Bioinformatics is an interdisciplinary field of science develops methods and software tools for understanding biological data , especially when that data is large and complex . Bioinformatics uses biology , chemistry , physics and computer science',
                                        style: secondaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 200,
                      width: double.infinity,
                      child: Column(children: [
                        Table(
                          border: TableBorder(
                            horizontalInside:
                                BorderSide(width: 3, color: secondaryColor1),
                            verticalInside:
                                BorderSide(width: 3, color: secondaryColor1),
                          ),
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Goals',
                                        style: primaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        "(1) to manage data in such a way that it allows easy access to the existing information and to submit new entries as they are produced.\n(2) to develop technological tools that help analyze biological data.",
                                        style: secondaryTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
