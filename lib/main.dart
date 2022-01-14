import 'package:flutter/material.dart';

import './answers.dart';
import './questions.dart';
import './result.dart';

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
  List<List<Map<String, Object>>> _answerList = [
    [
      {'text': "Option 1.A", 'score': 10},
      {'text': "Option 1.B", 'score': 0},
      {'text': "Option 1.C", 'score': 0},
      {'text': "Option 1.D", 'score': 0},
    ],
    [
      {'text': "Option 2.A", 'score': 0},
      {'text': "Option 2.B", 'score': 0},
      {'text': "Option 2.C", 'score': 10},
      {'text': "Option 2.D", 'score': 0},
    ],
    [
      {'text': "Option 3.A", 'score': 0},
      {'text': "Option 3.B", 'score': 10},
      {'text': "Option 3.C", 'score': 0},
      {'text': "Option 3.D", 'score': 0},
    ],
    [
      {'text': "Option 4.A", 'score': 10},
      {'text': "Option 4.B", 'score': 0},
      {'text': "Option 4.C", 'score': 0},
      {'text': "Option 4.D", 'score': 0},
    ],
    [
      {'text': "Option 5.A", 'score': 0},
      {'text': "Option 5.B", 'score': 10},
      {'text': "Option 5.C", 'score': 0},
      {'text': "Option 5.D", 'score': 0},
    ],
    [
      {'text': "Option 6.A", 'score': 0},
      {'text': "Option 6.B", 'score': 0},
      {'text': "Option 6.C", 'score': 10},
      {'text': "Option 6.D", 'score': 0},
    ],
  ];
  double _score = 0;
  var _currentIndex = 0;

  void _updateIndex(int currentScore) {
    _score += currentScore;
    setState(() {
      _currentIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentIndex = 0;
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
          title: Text(
            'Welcome to Quiz App',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28),
          ),
        ),
        body: _currentIndex < _questionList.length
            ? Center(
                child: Column(
                  children: [
                    Question(_questionList[_currentIndex]),
                    ..._answerList[_currentIndex].map((temp) {
                      return Answer(temp['text'].toString(),
                          () => _updateIndex(temp['score'] as int));
                    }).toList(),
                  ],
                ),
              )
            : Result(_score.toString(), _resetQuiz),
      ),
    );
  }
}
