import 'package:adv_basics/styled_text.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  void onPressed() {}

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png"),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: StyledText(
              text: "Learn Flutter the fun way!",
              fontSize: 23,
            ),
          ),
          OutlinedButton(
            onPressed: onPressed,
            child: const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Start Quiz",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
