import 'package:flutter/material.dart';

import './quesiton.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex == 0)
        _questionIndex++;
      else
        _questionIndex = 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      //Map
      {
        "questionText": "what's your favorite color?",
        "Answers": ["Black", "Red", "Green", "White"]
      },
      {
        "questionText": "what's your favorite animal?",
        "Answers": ["Rabbit", "Snake", "Elephant", "Lion"]
      },
      {
        "questionText": "who's your favorite instructor?",
        "Answers": ["Max", "Max", "Max", "Mekki"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My firs"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
