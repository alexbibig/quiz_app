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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: Image.asset(
                        'assets/images/quiz-logo.png',
                        width: 200,
                      ),
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
                      height: 120,
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(255, 138, 149, 155),
                      ),
                      icon: const Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Start',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
