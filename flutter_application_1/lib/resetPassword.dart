import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({super.key});

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  final emailController = TextEditingController();

  final nationalNumberController = TextEditingController();

  final studentIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/smalllogo.png',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.79, top: 75),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius:
                    BorderRadiusDirectional.only(topStart: Radius.circular(65)),
              ),
              width: double.infinity,
              height: 659.98,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 33.54,
                ),
                child: Column(
                  children: [
                    Text(
                      'Reset Your Password',
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 33, right: 33),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Academic e-mail',
                              style: mainTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: mainColor, width: 3.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'name@std.mans.edu.eg',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text('National Number',
                                textAlign: TextAlign.left,
                                style: mainTextStyle),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: mainColor, width: 3.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              controller: nationalNumberController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                hintText: '••••••••••••••',
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 35),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text('Student ID',
                                textAlign: TextAlign.left,
                                style: mainTextStyle),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: mainColor, width: 3.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              controller: studentIDController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                hintText: '••••••••••',
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 35),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: mainColor,
                            minWidth: double.infinity,
                            height: 50,
                            onPressed: () {},
                            child: Text(
                              "Send",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
