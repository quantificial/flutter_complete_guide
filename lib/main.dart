import 'package:flutter/material.dart';

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
