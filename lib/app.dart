import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<String> _selectedAnswers = [];
  var quizStarted = false;
  var quizEnded = false;

  void switchScreen() {
    setState(() {
      quizStarted = true;
    });
  }

  void resetQuiz() {
    _selectedAnswers.clear();

    setState(() {
      quizStarted = false;
      quizEnded = false;
    });
  }

  void selectAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        quizEnded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = StartScreen(handlePressStart: switchScreen);

    if (quizStarted) {
      activeWidget = QuestionsScreen(handleSelectAnswer: selectAnswer);
    }

    if (quizEnded) {
      activeWidget = ResultScreen(
        handleRestartQuiz: resetQuiz,
        selectedAnswers: _selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          margin: const EdgeInsets.only(top: 100, bottom: 80),
          child: activeWidget,
        ),
      ),
    );
  }
}
