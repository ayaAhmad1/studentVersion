import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingPage extends StatefulWidget {
  const onBoardingPage({super.key});

  @override
  State<onBoardingPage> createState() => _onBoardingPageState();
}

class _onBoardingPageState extends State<onBoardingPage> {
  final List<Map<String, String>> pages = [
    {
      'imagePath': 'assets/boarding 1.png',
    },
    {
      'imagePath': 'assets/boarding 2.png',
    },
    {
      'imagePath': 'assets/boarding 3.png',
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
      appBar: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )),
        ),
      ]),
      body: PageView.builder(
        controller: _pageController,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return onboardingPage(
            imagePath: pages[index]['imagePath']!,
            isFirstPage: index == 0,
          );
        },
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 260.95,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(250, 150),
            topRight: Radius.elliptical(250, 150),
          ),
          child: Container(
            padding: EdgeInsets.all(32),
            color: backgroundColor,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (_currentPageIndex == 0)
                  Text('Manage Your University Life', style: onboardingStyle),
                if (_currentPageIndex == 1)
                  Text('Learn More About Courses', style: onboardingStyle),
                if (_currentPageIndex == 2)
                  Text(
                    'Help Your College Get Better',
                    style: onboardingStyle,
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (_currentPageIndex > 0)
                        TextButton(
                          onPressed: _goToPreviousPage,
                          child: Image.asset('assets/back1.png'),
                        ),
                      Expanded(
                        child: Container(),
                      ),
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: pages.length,
                        effect: const WormEffect(
                          spacing: 16,
                          dotColor: Colors.white,
                          paintStyle: PaintingStyle.stroke,
                          activeDotColor: Colors.white,
                        ),
                        onDotClicked: (index) => _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      if (_currentPageIndex < pages.length - 1)
                        TextButton(
                          onPressed: _goToNextPage,
                          child: Image.asset('assets/forward1.png'),
                        ),
                      if (_currentPageIndex == pages.length - 1)
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Image.asset('assets/forward1.png'),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class onboardingPage extends StatelessWidget {
  final String imagePath;

  final bool isFirstPage;

  const onboardingPage({
    required this.imagePath,
    required this.isFirstPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
      ],
    );
  }
}

class HalfEllipseClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, size.height);

    path.quadraticBezierTo(
        size.width / 2, size.height * 2, size.width, size.height);

    path.lineTo(size.width, 0);

    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(HalfEllipseClipper oldClipper) => false;
}
