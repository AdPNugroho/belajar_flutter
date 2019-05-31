import 'package:flutter/material.dart';
import './products.dart';
class ProductManager extends StatefulWidget {
  final String startingProduct; //Variabel untuk parameter constructor
  ProductManager(this.startingProduct); //Pengisian variabel constructor
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState(); //Memanggil State Class
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Deskripsi Produk']; //Variabel dengan nilai default awal


  @override
  void initState() { //Method yang dijalankan pertama kali saat state dibuat
    _products.add(widget.startingProduct); //Menambah List product dengan parameter constructor dengan bantuan state widget.*****
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
              onPressed: () { //Apabila button ditekan, lalukan penambahan data _products
                setState(() { //StatefulWidget wajib menggunakan setState untuk data yang berubah ubah
                  _products.add('Tambahan Deskripsi');
                });
                // print(_products);
              },
              child: Text('Button')),
          margin: EdgeInsets.all(5), //Margin dari container untuk Button
        ),
        Products(_products) //Memanggil WidgetList Product
      ],
    );
  }
}
