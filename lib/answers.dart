import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _updateIndexOfMain;
  final String answer;
  Answer(this.answer, this._updateIndexOfMain);
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: _updateIndexOfMain,
        child: Text(
          answer,
          style: TextStyle(fontSize: 16),
        ),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
