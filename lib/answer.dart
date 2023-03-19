import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.onPressedFunction});

  final VoidCallback onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      // ignore: prefer_const_constructors
      child: ElevatedButton(
        child: Text('This is Answer'),
        style: ButtonStyle(alignment: Alignment.center),
        onPressed: onPressedFunction,
      ),
    );
  }
}
