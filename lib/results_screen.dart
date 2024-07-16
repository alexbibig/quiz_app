import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_result.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.handleRestartQuiz,
    required this.selectedAnswers,
  });

  final void Function() handleRestartQuiz;
  final List<String> selectedAnswers;

  List<Map<String, Object>> getResult() {
    final List<Map<String, Object>> result = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      result.add({
        'index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    final result = getResult();
    final totalQuestionsNumber = questions.length;
    final rightQuestionsNumber =
        result.where((el) => el['correct_answer'] == el['user_answer']).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $rightQuestionsNumber out of $totalQuestionsNumber questions correctly.',
              style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            SizedBox(
              height: 300,
              child: SingleChildScrollView(
                child: Column(children: [
                  ...(result.map((el) => QuestionResult(el)).toList()),
                ]),
              ),
            ),
            const SizedBox(height: 60),
            Button(
              onPressed: handleRestartQuiz,
              label: 'Restart quiz',
              icon: Icons.replay,
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
