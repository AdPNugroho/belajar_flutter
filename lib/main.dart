import 'package:flutter/material.dart';
import './pages/home.dart';
import './product_manager.dart'; //Import Widget Product Manager
// import 'package:flutter/rendering.dart'; //Debug UI

void main() {
  // debugPaintSizeEnabled = true; //Mengaktifkan Debug UI
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}
//Alternatif
// void main() => runApp(MyApp());

//statefullW atau statelessW autocomplete
class MyApp extends StatelessWidget {
  //Lifecycle hook State
  // - Input Data => Widget => Render UI

  //Stateless Widget
  // - Constructor Function => Build()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true, //Tampil Grid pada layar 
        theme: ThemeData( //Setting Konfigurasi Tema dari Widget
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.deepPurple
        ),
        home: HomePage()
    );
  }
}
