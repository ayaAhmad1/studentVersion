import 'package:flutter/material.dart';

import 'package:flutter_application_1/Centers/consultingCenter.dart';

import 'package:flutter_application_1/Centers/itiCenter.dart';

import 'package:flutter_application_1/Centers/ntiCenter.dart';

import 'package:flutter_application_1/style.dart';

class certifiedCenter extends StatefulWidget {
  const certifiedCenter({super.key});

  @override
  State<certifiedCenter> createState() => _certifiedCenterState();
}

class _certifiedCenterState extends State<certifiedCenter> {
  Widget buildMaterialButton(
    String text,
    VoidCallback onPressed,
  ) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      minWidth: double.infinity,
      height: 73.69,
      color: backgroundColor,
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(
            "assets/center.png",
          ),
          SizedBox(width: 15.0),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Centers', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          margin: EdgeInsets.all(32.13),
          child: Column(
            children: [
              buildMaterialButton(
                "Consulting Center",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => consultingCenter()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "ITI Center",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => itiCenter()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "NTI Center",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ntiCenter()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
