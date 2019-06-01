import 'package:flutter/material.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
                title: Text('Judul AppBar'),
              ),
              body: ProductManager() // body: ProductManager('Starting') //Memanggil Widget beserta parameter constructor Alternatif
    );
  }
}