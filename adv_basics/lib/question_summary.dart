import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({
    required this.summaryData,
    super.key,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                ((data['question_index'] as int) + 1).toString(),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'].toString()),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(data['user_answer'].toString()),
                    Text(data['correct_answer'].toString())
                  ],
                ),
              )
            ],
          );
        },
      ).toList(),
    );
  }
}
