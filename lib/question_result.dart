import 'package:flutter/material.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final isAnsweredCorrectly = data['correct_answer'] == data['user_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isAnsweredCorrectly ? Colors.greenAccent : Colors.redAccent,
          ),
          child: Text(
            ((data['index'] as int) + 1).toString(),
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data['question'] as String,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
              Text(data['correct_answer'] as String,
                  style: const TextStyle(fontSize: 14, color: Colors.cyan)),
              Text(data['user_answer'] as String,
                  style: const TextStyle(fontSize: 14, color: Colors.purple)),
            ],
          ),
        )
      ],
    );
  }
}
