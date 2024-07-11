import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.onPressStart,
  });

  final void Function() onPressStart;

  @override
  Widget build(BuildContext context) {
    return Center(
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
          Button(
            onPressed: onPressStart,
            label: 'Start',
          )
        ],
      ),
    );
  }
}
