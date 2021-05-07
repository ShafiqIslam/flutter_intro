import 'package:flutter/material.dart';
import 'package:app/quiz/quiz.dart';
import 'package:app/quiz/result.dart';

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  int _currentQuestion = 0;
  int _totalScore = 0;

  final List<Map> questions = const [
    {
      'question': "What is your favourite food?",
      'answers': [
        {
          "text": "Shahi/Moghlai",
          "score": 10,
        },
        {
          "text": "Bengali",
          "score": 8,
        },
        {
          "text": "Fast Food",
          "score": 5,
        }
      ]
    },
    {
      'question': "What is your favourite sport?",
      'answers': [
        {
          "text": "Cricket",
          "score": 10,
        },
        {
          "text": "Football",
          "score": 8,
        },
        {
          "text": "Computer Games",
          "score": 5,
        }
      ]
    },
    {
      'question': "What is your favourite activity?",
      'answers': [
        {
          "text": "Exploring",
          "score": 10,
        },
        {
          "text": "Reading",
          "score": 8,
        },
        {
          "text": "Shopping",
          "score": 5,
        }
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _currentQuestion++;
      _totalScore += score;
    });
  }

  bool hasMoreQuestion() {
    return _currentQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App Title"),
        ),
        body: hasMoreQuestion()
            ? Quiz(
          questions: questions,
          answerCallback: _answerQuestion,
          currentQuestion: _currentQuestion,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}