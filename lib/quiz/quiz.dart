import 'package:flutter/material.dart';
import 'package:app/quiz/question.dart';
import 'package:app/quiz/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final void Function(int) answerCallback;
  final currentQuestion;

  const Quiz({
    required this.questions,
    required this.answerCallback,
    required this.currentQuestion
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[currentQuestion]['question']),
        ...(questions[currentQuestion]['answers'] as List<Map>).map((answer) {
          return Answer(() => answerCallback(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
