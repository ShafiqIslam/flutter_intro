import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const Answer(this.callback, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        onPressed: this.callback,
        child: Text(this.text),
      ),
    );
  }
}
