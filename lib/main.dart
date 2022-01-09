import 'package:flutter/material.dart';

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
        body: Center(
            child: Column(
          children: [
            Text('Question Statement'),
            RaisedButton(child: Text('Option 1'), onPressed: null),
            RaisedButton(child: Text('Option 2'), onPressed: null),
            RaisedButton(child: Text('Option 3'), onPressed: null),
            RaisedButton(child: Text('Option 4'), onPressed: null),
          ],
        )),
      ),
    );
  }
}
