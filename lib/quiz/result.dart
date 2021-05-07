import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  const Result(this.score, this.resetHandler);

  String get resultText {
    if (score > 24) {
      return "Uncultured";
    } else if (score > 15) {
      return "Middleman";
    } else {
      return "Acid Gang";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultText,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text("Reset"),
        )
      ],
    );
  }
}
