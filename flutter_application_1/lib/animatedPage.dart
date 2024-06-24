import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/onBoardingPage.dart';

class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late double initialWidth = 18;
  late double initialHeight = 15;
  late double targetWidth = 279.86;
  late double targetHeight = 225.14;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animationController.repeat(reverse: true);
    _animationController.addListener(() {
      setState(() {
        initialWidth =
            lerpDouble(initialWidth, targetWidth, _animationController.value)!;
        initialHeight = lerpDouble(
            initialHeight, targetHeight, _animationController.value)!;
      });
    });
    _animationController.forward();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => onBoardingPage()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.easeInOut,
          width: initialWidth,
          height: initialHeight,
          child: Image.asset('assets/animation.png'),
        ),
      ),
    );
  }
}
