import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;
  Question(this._question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      child: Text(
        _question,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
