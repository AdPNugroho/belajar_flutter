import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
//Alternatif
// void main() => runApp(MyApp());

//statefullW atau statelessW autocomplete
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  List<String> _products = ['Deskripsi Produk'];

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
                  onPressed: (){
                    setState(() {
                      _products.add('Tambahan Deskripsi');
                    });
                    // print(_products);
                  },
                  child:Text('Button')
                ),
                margin: EdgeInsets.all(5),
              ),
              Column(children: _products.map((element) => 
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/image.jpg'),
                        Text(element)
                      ],
                    ),
                  )
                ).toList()
              )
            ],
          )
        )
    );
  }
}
