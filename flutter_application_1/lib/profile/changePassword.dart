import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: headerTextStyle,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              width: 120,
              height: 120,
              color: mainColor,
              child: Center(child: Image.asset('assets/profile1.png')),
            ),
          ),
          TextButton(onPressed: () {}, child: Text('data')),
        ],
      ),
    );
  }
}
