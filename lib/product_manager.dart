import 'package:flutter/material.dart';
import './products.dart';
class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Deskripsi Produk'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add('Tambahan Deskripsi');
                });
                // print(_products);
              },
              child: Text('Button')),
          margin: EdgeInsets.all(5),
        ),
        Products(_products)
      ],
    );
  }
}
