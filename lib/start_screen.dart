import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class start_Screen extends StatelessWidget {
  const start_Screen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                ),
                const SizedBox(
                  height: 40,
                ),
                reuseableText('Learn Flutter the Fun way!'),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton.icon(
                  onPressed: startQuiz,
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text('Start Quiz'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text reuseableText(String text) {
    return Text(
      text,
      style: GoogleFonts.lato(
          fontSize: 24, color: const Color.fromARGB(255, 237, 223, 252)),
    );
  }
}
