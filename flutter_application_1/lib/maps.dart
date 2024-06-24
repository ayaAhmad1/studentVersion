import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class mapsPage extends StatelessWidget {
  const mapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Maps",
          style: headerTextStyle,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(32.13),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 237.31,
                  child: Padding(
                    padding: const EdgeInsets.all(11.77),
                    child: Image.asset(
                      "assets/map 1.png",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 295.74,
                height: 237.31,
                child: Padding(
                  padding: const EdgeInsets.all(11.77),
                  child: Image.asset("assets/map 2.png"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 295.74,
                height: 237.31,
                child: Padding(
                  padding: const EdgeInsets.all(11.77),
                  child: Image.asset("assets/map 3.png"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 295.74,
                height: 237.31,
                child: Padding(
                  padding: const EdgeInsets.all(11.77),
                  child: Image.asset("assets/map 3.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
