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
          body: Column(
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: (){},
                  child:Text('Button')
                ),
                margin: EdgeInsets.all(5),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/image.jpg'),
                    Text('Deskripsi Gambar')
                  ],
                ),
              ),
            ],
          )
        )
    );
  }
}
