import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.chooseAnswer});

  final void Function(String) chooseAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndexQuestion = 0;

  void answerQuestion(answer) {
    widget.chooseAnswer(answer);
    setState(() {
      currentIndexQuestion++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentIndexQuestion];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              fontSize: 24,
              color: const Color.fromARGB(255, 171, 114, 204),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...currentQuestion.getShuffedList().map((answer) {
                  return AnswerButton(
                    answer: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
