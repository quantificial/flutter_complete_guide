import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question({super.key, required this.questionText});

  String questionText;

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Container(
      color: Color.fromRGBO(255, 0, 0, 0.368),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 28, backgroundColor: Color.fromRGBO(0, 0, 255, 1)),
        //textAlign: TextAlign.center,
      ),
    );
  }
}
