import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/resetPassword.dart';
import 'package:flutter_application_1/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final String predefinedEmail = 'name@std.mans.edu.eg';
  final String predefinedPassword = 'password123';
  bool isEmailValid = true;
  bool isPasswordValid = true;
  void _login() {
    final email = emailController.text;
    final password = passwordController.text;
    setState(() {
      isEmailValid = email == predefinedEmail;
      isPasswordValid = password == predefinedPassword;
    });

    if (isEmailValid && isPasswordValid) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => homePage()), // Change to your home page
      );
    }
  }

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
                color: Colors.white,
                borderRadius:
                    BorderRadiusDirectional.only(topStart: Radius.circular(65)),
              ),
              width: double.infinity,
              height: 640.0,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 33.54,
                ),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 26,
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
                            child:
                                Text('Academic e-mail', style: mainTextStyle),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: isEmailValid ? mainColor : Colors.red,
                                  width: 2.0),
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
                            child: Text(
                              'Password',
                              style: mainTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      isPasswordValid ? mainColor : Colors.red,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                hintText: '•••••••',
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 35),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/button.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Remember me",
                                style: mainTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: mainColor,
                            minWidth: double.infinity,
                            height: 50,
                            onPressed: _login,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => resetPassword()));
                      },
                      child: Text(
                        "Forgot your Password ?",
                        style: TextStyle(
                          color: Color.fromRGBO(162, 162, 162, 1),
                        ),
                      ),
                    )
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
