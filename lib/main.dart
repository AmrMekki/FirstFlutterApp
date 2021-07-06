import 'package:flutter/material.dart';

import './quesiton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
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
    _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your favorite color?",
      "what's your favorite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app!"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(

              onPressed: _answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
