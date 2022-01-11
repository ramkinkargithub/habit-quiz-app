import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  final VoidCallback _updateIndexOfMain;
  final String answer;
  Answer(this.answer, this._updateIndexOfMain);
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: _updateIndexOfMain,
        child: Text(answer),
      ),
    );
  }
}
