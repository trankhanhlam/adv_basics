import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({required this.text, required this.fontSize, super.key});

  final String text;
  final double fontSize;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
      ),
    );
  }
}
