import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
  final String title,imageUrl;

  ProductPage(this.title,this.imageUrl);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
                title: Text(title),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(imageUrl),
                  Container(padding: EdgeInsets.all(10.0), child: Center(child: Text(title),)),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('DELETE'),
                    onPressed: () => Navigator.pop(context,true),
                  )
                ],
              ) // body: ProductManager('Starting') //Memanggil Widget beserta parameter constructor Alternatif
    );
  }
}