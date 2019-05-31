import 'package:flutter/material.dart';
import './product_manager.dart'; //Import Widget Product Manager

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
          body: ProductManager('Starting') //Memanggil Widget beserta parameter constructor
        )
    );
  }
}
