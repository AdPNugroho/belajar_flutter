import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; //Variabel constructor untuk List Product
  Products([this.products = const []]){
  // Products(this.products){
    print('[Product Widget] Constructor');
  }
  @override
  Widget build(BuildContext context) {
    print('[Product Widget] Build');
    return ListView( //Kolom Wrapper Vertical Row untuk List CardView
        children: products //Perulangan data dari variabel products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/image.jpg',height: 50,width: 50,alignment: Alignment.center,),
                      Text(element)
                    ],
                  ),
                ))
            .toList());
  }
}
