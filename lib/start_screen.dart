import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.handlePressStart,
  });

  final void Function() handlePressStart;

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
          Text(
            'Learn Flutter Easy',
            style: GoogleFonts.abel(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Button(
            onPressed: handlePressStart,
            label: 'Start',
            icon: Icons.arrow_forward,
            borderRadius: 16,
            backgroundColor: Colors.transparent,
            borderColor: Colors.white,
          )
        ],
      ),
    );
  }
}
