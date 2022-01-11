import 'package:flutter/material.dart';
import 'package:habit_quiz/answers.dart';

import './questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // Application Root.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var _questionList = ["Q1", "Q2", "Q3", "Q4", "Q5", "Q6"];
  var _answerList = [
    ["Option 1.A", "Option 1.B", "Option 1.C", "Option 1.D"],
    ["Option 2.A", "Option 2.B", "Option 2.C", "Option 2.D"],
    ["Option 3.A", "Option 3.B", "Option 3.C", "Option 3.D"],
    ["Option 4.A", "Option 4.B", "Option 4.C", "Option 4.D"],
    ["Option 5.A", "Option 5.B", "Option 5.C", "Option 5.D"],
    ["Option 6.A", "Option 6.B", "Option 6.C", "Option 6.D"],
  ];
  double _score = 0;
  var _currentIndex = 0;
  void _updateIndex() {
    setState(() {
      _currentIndex++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Quiz App'),
        ),
        body: _currentIndex < 6
            ? Center(
                child: Column(
                children: [
                  Question(_questionList[_currentIndex]),
                  ...(_answerList[_currentIndex] as List<String>).map((temp) {
                    return Answer(temp, _updateIndex);
                  }).toList(),
                ],
              ))
            : Center(
                child: Text(_score.toString()),
              ),
      ),
    );
  }
}
