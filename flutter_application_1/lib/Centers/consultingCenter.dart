import 'package:flutter/material.dart';

import 'package:flutter_application_1/style.dart';

class consultingCenter extends StatelessWidget {
  const consultingCenter({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle myTextStyle = TextStyle(
      fontFamily: 'Baloo Tammudu',
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Centers', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.all(32.13),
          child: Padding(
            padding: const EdgeInsets.all(24.14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/center.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Consulting Center",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "The Board of Directors of the Computer and Information Systems Consulting Center was formed as of\n\n06/06/2006 for a period of two years, subject to renewal.\n\nThe Computer and Information Systems Consulting Center aims to develop the applied, skills and research aspect to help provide appropriate Egyptian technology by organizing the use of the college’s technical and scientific capabilities and expertise to interact with technical needs\n\nThe current and future development of the university and the surrounding community through the following means:\n\nManaging the use of the college’s technical and practical capabilities when dealing with the community outside the scope of the educational process\n\nStrengthening links to information and service centers in the surrounding community to identify technical needs\n\nDeveloping and producing scientific and information systems or scientific devices through self-financing of the center’s activity\n\nEncouraging the use of recognized marketing methods to promote its service and production products\n\nDeveloping performance with the help of experts and technicians from within or outside the university\n\nHolding training courses in various technical and practical fields to raise efficiency in using computers\n\nServices provided by the center:\n\nBuilding programs, systems, databases, and implementing technological and information services outside and inside the university\n\nSpreading awareness and knowledge of using computers in various applied activities\n\nProviding technical services to address various applied problems\n\nCooperation with training centers on modern technologies for computers and information systems\n\nProviding technical consultations related to computers and information systems\n\nThe possibility of conducting feasibility studies on the automation of administrative and technical systems and preparing a brochure Terms and specifications for companies\n\nIn various fields of computers for students of the affiliated college",
                    style: myTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
