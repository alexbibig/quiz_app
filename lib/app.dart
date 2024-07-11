import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var quizStated = false;

  void switchScreen() {
    setState(() {
      quizStated = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = StartScreen(onPressStart: switchScreen);

    if (quizStated) {
      activeWidget = const QuestionsScreen();
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
