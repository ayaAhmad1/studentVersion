import 'package:flutter/material.dart';
import 'package:flutter_application_1/Quality%20Standerds/standardsPage.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/style.dart';

class standards extends StatefulWidget {
  const standards({super.key});

  @override
  State<standards> createState() => _standardsState();
}

class _standardsState extends State<standards> {
  final List<Map<String, String>> pages = [
    {
      'imagePath': 'assets/standard1.png',
      'description':
          'The program has an approved and declared mission, and a qualified leadership to manage.',
      'message': 'Message and Program',
    },
    {
      'imagePath': 'assets/standard2.png',
      'description':
          'The program adopts national academic reference standards or other standards approved.',
      'message': 'Program Design',
    },
    {
      'imagePath': 'assets/standard3.png',
      'description':
          'The program has various teaching and learning methods to encourage self-learning and the acquisition of thinking.',
      'message': 'Teaching and Learning',
    },
    {
      'imagePath': 'assets/standard4.png',
      'description':
          'The program has clear policies and rules for admission and transfer, and systems for support, academic guidance',
      'message': 'Students and Graduates',
    },
    {
      'imagePath': 'assets/standard5.png',
      'description':
          'The program has a qualified number of faculty members and supporting staff, and they are selected according to standards.',
      'message': 'Members and Stuff',
    },
    {
      'imagePath': 'assets/standard6.png',
      'description':
          'The program has financial resources, material resources appropriate to its nature, security and safety requirements',
      'message': 'Learning Resources',
    },
    {
      'imagePath': 'assets/standard7.png',
      'description':
          'The program has an effective quality management system and objective indicators for self-evaluation.',
      'message': 'Quality Assurance',
    },
  ];

  late PageController _pageController;

  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  void _goToPreviousPage() {
    if (_currentPageIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

      setState(() {
        _currentPageIndex--;
      });
    }
  }

  void _goToNextPage() {
    if (_currentPageIndex < pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

      setState(() {
        _currentPageIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quality Standards', style: headerTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return StandardPage(
            imagePath: pages[index]['imagePath']!,
            description: pages[index]['description']!,
            message: pages[index]['message']!,
            isFirstPage: index == 0,
          );
        },
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.only(bottom: 50, right: 50, left: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (_currentPageIndex > 0)
              TextButton(
                  onPressed: _goToPreviousPage,
                  child: Image.asset("assets/back.png")),
            Spacer(),
            if (_currentPageIndex < pages.length - 1)
              TextButton(
                onPressed: _goToNextPage,
                child: Image.asset("assets/forward.png"),
              ),
            if (_currentPageIndex == pages.length - 1)
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => homePage()),
                    );
                  },
                  child: Image.asset("assets/done.png")),
          ],
        ),
      ),
    );
  }
}
