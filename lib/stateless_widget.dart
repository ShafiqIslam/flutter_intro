import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: Column(
          children: [
            Text("The question"),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () => print("Answer 2 clicked"),
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                print("answer 3 clicked");
              },
              child: Text("Answer 3"),
            )
          ],
        ),
      ),
    );
  }
}