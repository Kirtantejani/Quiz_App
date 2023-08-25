import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/ans_button.dart';
import 'package:quiz/data/question.dart';

class Question_Screen extends StatefulWidget {
  const Question_Screen({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;

  @override
  State<Question_Screen> createState() => _Question_ScreenState();
}

class _Question_ScreenState extends State<Question_Screen> {
  var answerquestion = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      answerquestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[answerquestion];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // children take list of widgets as parameter
          children: [
            Text(
              currentQuestions.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // this 3 dot convert all nested list item as individual element in children list of column
            // map used for convert all list item whatever we do it
            ...currentQuestions.getShuffledAnswers().map((item) {
              return AnswerButton(item, () {
                answerQuestion(item);
              });
            }),
          ],
        ),
      ),
    );
  }
}
