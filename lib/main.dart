import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = ['aaaa', 'bbbbb'];

  var title = "Application Title A";

  void changeTitle() {
    setState(() {
      title = "Application B~~~";
    });
    print('dsadsadsa');
  }

  void changeTitleA() {
    setState(() {
      title = "Application A~~~";
    });
    print('dsadsadsa');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Text('Hello!'),
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(
            children: [
              Question(questionText: questions[0]),
              ElevatedButton(onPressed: changeTitle, child: Text('Answer 1')),
              ElevatedButton(
                onPressed: () => {print('press answer 2')},
                child: Text('Answer 2'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown)),
              ),
              ElevatedButton(
                  onPressed: () {
                    print('pressed answer 3');
                  },
                  child: Text('Answer 3')),
              Answer(onPressedFunction: changeTitleA),
            ],
          )),
    );
  }
}
