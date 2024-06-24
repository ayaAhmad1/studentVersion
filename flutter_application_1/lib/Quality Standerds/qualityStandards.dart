import 'package:flutter/material.dart';

import 'package:flutter_application_1/Quality%20Standerds/standards.dart';

import 'package:flutter_application_1/style.dart';


class qualityStandards extends StatefulWidget {

  const qualityStandards({super.key});


  @override

  State<qualityStandards> createState() => _qualityStandardsState();

}


class _qualityStandardsState extends State<qualityStandards> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: backgroundColor,

      appBar: AppBar(

        backgroundColor: backgroundColor,

        title: Text(

          'Quality Standards',

          style: TextStyle(

            color: Colors.white,

            fontSize: 26,

          ),

        ),

        centerTitle: true,

        iconTheme: IconThemeData(

          color: Colors.white,

        ),

      ),

      body: Padding(

        padding: const EdgeInsets.only(top: 30),

        child: Container(

          margin: EdgeInsets.all(30),

          child: Column(children: [

            MaterialButton(

              shape: const RoundedRectangleBorder(

                borderRadius: BorderRadius.all(

                  Radius.circular(15.0),

                ),

              ),

              minWidth: double.infinity,

              height: 73.69,

              color: Colors.white,

              onPressed: () {

                Navigator.push(context,

                    MaterialPageRoute(builder: (context) => standards()));

              },

              child: Row(children: [

                Image.asset("assets/3.png"),

                SizedBox(width: 15.0),

                Text(

                  "View Standards",

                  style: TextStyle(

                    color: mainColor,

                    fontSize: 24,

                  ),

                ),

              ]),

            ),

          ]),

        ),

      ),

    );

  }

}

