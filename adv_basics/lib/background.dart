import 'package:flutter/material.dart';
import 'package:adv_basics/first_screen.dart';

class Background extends StatelessWidget {
  const Background(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const FirstScreen(),
    );
  }
}
