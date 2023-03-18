import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var questions = ['aaaa', 'bbbbb'];

  void changeTitle() {
    print('dsadsadsa');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Text('Hello!'),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[0]),
              ElevatedButton(onPressed: changeTitle, child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: () => {print('press answer 2')},
                  child: Text('Answer 2')),
              ElevatedButton(
                  onPressed: () {
                    print('pressed answer 3');
                  },
                  child: Text('Answer 3')),
            ],
          )),
    );
  }
}
