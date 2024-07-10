import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: Container(
              margin: const EdgeInsets.only(top: 100, bottom: 80),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/quiz-logo.png',
                      width: 200,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      'Learn Flutter Easy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 138, 149, 155),
                      child: const Text(
                        'Go',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
