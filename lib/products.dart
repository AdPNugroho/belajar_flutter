import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; //Variabel constructor untuk List Product
  Products(this.products);
  @override
  Widget build(BuildContext context) {
    return Column( //Kolom Wrapper Vertical Row untuk List CardView
        children: products //Perulangan data dari variabel products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/image.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList());
  }
}
