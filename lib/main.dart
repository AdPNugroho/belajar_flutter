import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
//Alternatif
// void main() => runApp(MyApp());

//statefullW atau statelessW autocomplete
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Judul AppBar'),
          ),
        )
    );
  }
}
