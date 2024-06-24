import 'package:flutter/material.dart';
import 'package:flutter_application_1/Questionnaires/done.dart';
import 'package:flutter_application_1/Questionnaires/navigation.dart';
import 'package:flutter_application_1/Questionnaires/startQuestionnaire.dart';
import 'package:flutter_application_1/qu.dart';
import 'package:flutter_application_1/style.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  final PageController _pageController = PageController();
  final TextEditingController _likeController = TextEditingController();
  final TextEditingController _dislikeController = TextEditingController();
  int _currentPage = 0;
  List<int?> _selectedAnswers = [null, null, null];

  void _nextPage() {
    if (_currentPage < 3) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DonePage()),
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    if (_currentPage == 0) {
      Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => StartQuestionnaire()),
      );
    }
  }

  void _jumpToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _selectAnswer(int pageIndex, int answerIndex) {
    setState(() {
      _selectedAnswers[pageIndex] = answerIndex;
    });
  }

  Widget _buildQuestionPage(
      String question, List<String> options, int pageIndex) {
    return QuestionPage(
      question: question,
      options: options,
      selectedAnswer: _selectedAnswers[pageIndex],
      onSelectAnswer: (index) => _selectAnswer(pageIndex, index),
      mainColor: mainColor,
      secondaryColor: secondaryColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.8),
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          children: [
            _buildQuestionPage(
              "What do you think about this year's material ?",
              [
                "Interesting",
                "Related to specialty",
                "Updated content",
                "Practically applied",
                "Meet expectations",
                "Usefully applied",
                "Easy to understand"
              ],
              0,
            ),
            _buildQuestionPage(
              "What do you think about this year's lectures ?",
              [
                "Given on time",
                "Explains content",
                "Covers content",
                "Excitingly explained",
                "Students participated",
                "Practically applied",
                "Decent material book"
              ],
              1,
            ),
            _buildQuestionPage(
              "What do you think about the laboratories ?",
              [
                "Enough laboratories",
                "Modern hardware",
                "Attractive design",
                "Competent technician",
                "Quiet",
                "Clean",
                "Good ventilation"
              ],
              2,
            ),
            TextInputPage(
              likeController: _likeController,
              dislikeController: _dislikeController,
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigateBar(
        currentPage: _currentPage,
        totalPageCount: 4,
        mainColor: mainColor,
        onPrevious: _previousPage,
        onNext: _nextPage,
        onDotTap: _jumpToPage,
      ),
    );
  }
}
