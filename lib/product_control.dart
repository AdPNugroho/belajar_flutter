import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final updateProduct;
  ProductControl(this.updateProduct);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          updateProduct('Text');
          //Apabila button ditekan, lalukan penambahan data _products
          // print(_products);
        },
        color:
            Theme.of(context).primaryColor, //Akses Konfigurasi dari ThemeData
        textColor: Colors.white, //Akses Warna langsung ke Class yang sesuai
        child: Text('Button'));
  }
}
