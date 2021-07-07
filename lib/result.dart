import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultQuiz;

  Result(this.resultScore, this.resultQuiz);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8)
      resultText = "You are awesome and inncoent!";
    else if (resultScore <= 12)
      resultText = "Pretty likable!";
    else if (resultScore <= 16)
      resultText = "You are... strange?";
    else
      resultText = "You are so bad!";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: () => resultQuiz(),
          child: Text("Restart Quiz!"),
          textColor: Colors.blue,
        )
      ]),
    );
  }
}
