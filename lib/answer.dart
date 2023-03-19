import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  const Answer(
      {super.key, required this.onPressedFunction, required this.answerString});

  final VoidCallback onPressedFunction;
  final String answerString;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      // ignore: prefer_const_constructors
      child: ElevatedButton(
        child: Text(answerString),
        style: ButtonStyle(
            alignment: Alignment.center,
            textStyle: MaterialStateProperty.all(TextStyle(
                color: Color.fromARGB(255, 197, 40, 71), fontSize: 20)),
            backgroundColor: MaterialStateProperty.all(Colors.amber)),
        onPressed: onPressedFunction,
      ),
    );
  }
}
