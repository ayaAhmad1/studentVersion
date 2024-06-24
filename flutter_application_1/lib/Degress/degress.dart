import 'package:flutter/material.dart';
import 'package:flutter_application_1/Degress/bachelor.dart';
import 'package:flutter_application_1/Degress/diploma.dart';
import 'package:flutter_application_1/Degress/master.dart';
import 'package:flutter_application_1/Degress/phd.dart';
import 'package:flutter_application_1/style.dart';

class Degrees extends StatefulWidget {
  const Degrees({super.key});

  @override
  State<Degrees> createState() => _DegreesState();
}

class _DegreesState extends State<Degrees> {
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
            "assets/degree.png",
          ),
          SizedBox(width: 15.0),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
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
        title: Text('Degrees', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          margin: EdgeInsets.all(32.13),
          child: Column(
            children: [
              buildMaterialButton(
                "Bachelor’s Degree",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bachelorPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "Diploma’s Degree",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => diplomaPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "Master’s Degree",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => masterPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              buildMaterialButton(
                "PHD Degree",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => phdPage()),
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
