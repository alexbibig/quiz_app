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
  List<String> selectedAnswers = [];
  var quizStated = false;
  var quizEnded = false;

  void switchScreen() {
    setState(() {
      quizStated = true;
    });
  }

  void resetQuiz() {
    setState(() {
      quizStated = false;
      quizEnded = false;
    });
  }

  void selectAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        quizEnded = true;
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = StartScreen(handlePressStart: switchScreen);

    if (quizStated) {
      activeWidget = QuestionsScreen(handleSelectAnswer: selectAnswer);
    }

    if (quizEnded) {
      activeWidget = ResultScreen(handleRestartQuiz: resetQuiz);
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
