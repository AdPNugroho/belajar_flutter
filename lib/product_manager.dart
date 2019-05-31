import 'package:flutter/material.dart';
import './products.dart';
class ProductManager extends StatefulWidget {
  final String startingProduct; //Variabel untuk parameter constructor
  ProductManager({this.startingProduct = 'Default Deskripsi'}){ //Pengisian variabel constructor
  // ProductManager({this.startingProduct}){ //Pengisian variabel constructor Tanpa Default Value
  // ProductManager(this.startingProduct){ //Pengisian variabel constructor Alternatif
    print('[ProductManaget Widget] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    print('[ProductManaget Widget] createState()');
    return _ProductManagerState(); //Memanggil State Class
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Deskripsi Produk']; //Variabel dengan nilai default awal


  @override
  void initState() { //Method yang dijalankan pertama kali saat state dibuat
    print('[ProductManaget State] initState()');
    super.initState(); //Rekomendasi Code Style
    _products.add(widget.startingProduct); //Menambah List product dengan parameter constructor dengan bantuan state widget.*****
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManaget State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }
  //Lifecycle hook State
  //Stateful
  // - Input Data => Widget - Internal State => Render UI

  //Stateful Widget
  // -Constructor Function => initState() => build() => setState() => didUpdateWidget() => build()

  @override
  Widget build(BuildContext context) {
    print('[ProductManaget State] build()');
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
              color: Theme.of(context).primaryColor, //Akses Konfigurasi dari ThemeData
              textColor: Colors.white, //Akses Warna langsung ke Class yang sesuai
              child: Text('Button')),
          margin: EdgeInsets.all(5), //Margin dari container untuk Button
        ),
        // Products() //Memanggil WidgetList Product Tanpa Value Constructor
        Products(_products) //Memanggil WidgetList Product
      ],
    );
  }
}
