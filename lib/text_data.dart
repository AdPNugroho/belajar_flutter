import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  String textData;
  TextData(this.textData);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(textData)
      ],
    );
  }
}
