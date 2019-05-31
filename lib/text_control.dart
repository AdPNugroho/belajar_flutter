import 'package:flutter/material.dart';
import './text_data.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String text = "Ini Text";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
            onPressed: (){
              setState(() {
               text = "Text Terganti"; 
              });
            },
            child: Text('Ganti Text'),
          ),
        ),
        TextData(text)
      ],
    );
  }
}
