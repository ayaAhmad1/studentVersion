import 'package:flutter/material.dart';

import 'package:flutter_application_1/style.dart';

class ntiCenter extends StatelessWidget {
  const ntiCenter({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle myTextStyle = TextStyle(
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
                      "NTI Center",
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
                    "The National Telecommunication Institute (NTI), being a reputed scientific, educational and research institution founded in 1983.\nWith the mandate of becoming the center of excellence for telecommunication education, training, research and development and consultancy services.\n\n It is devoting all of its resources to the build up the pillars of development and is well prepared and well equipped  to play a major role in the fast paced development of the ICT industry.\n\nIn a world living in the information and communication technology (ICT) age, information and knowledge became the drivers of growth and development.\n\nThese engines of growth can not be attained for any society, country or nation without proper development of information and communication infrastructure and proper utilization of ICT in all aspects of life\n\nNetworks planning department has up-to-date equipments, laboratories, design tools and simulation software packages that support new technologies in network planning field. The department uses these facilities for training, research and development and technical consultations.\n\nElectronics Department: The electronics department focuses on applied and scientific research in the telecommunication electronic design and engineering field. The department supports and cooperates with the local industry and provides high level training programs in electronic design and manufacturing.\n\nThe Department of Computers and Systems has number of academic members who work in several research fields; Cloud Computing, Machine Learning, Multimedia Communication, Information Security, etc... providing the consultation and training for both the graduate and the undergraduate engineers in these fields. The department provides the needed help and support for all other NTI Departments by number of professional engineers and technicians. The technical team members are grouped into three main parties; the first one is responsible for maintaining the NTI networking that connect all departments and their equipments, providing the needed administration to keep work sustain and secured. The second party is responsible for the development and maintenance of the NTI website, providing several open source based solutions to facilitate both administrative and educational work. The third party is responsible for designing and maintaining the needed database applications that automate the managerial and administrative work in the institute. In addition to professional members that work in the field of developing the electronic contents and e-learning courses.",
                    style: myTextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
