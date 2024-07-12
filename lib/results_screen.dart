import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.handleRestartQuiz,
  });

  final void Function() handleRestartQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered all questions correctly.'),
            const SizedBox(height: 60),
            const Text('You answered all questions correctly.'),
            const SizedBox(height: 36),
            Button(
              onPressed: handleRestartQuiz,
              label: 'Restart quiz',
              icon: Icons.arrow_forward,
              borderRadius: 16,
              backgroundColor: Colors.transparent,
              borderColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
