import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; //Variabel constructor untuk List Product
  Products([this.products = const []]){
  // Products(this.products){
    print('[Product Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context,int index){ //Custom method untuk Widget Rendering ListView.Builder dengan constructor context dan index
    return Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/image.jpg',height: 50,width: 50,alignment: Alignment.center,),
                Text(products[index]) //akses data List dengan mengakses index langsung dari Listnya
              ],
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] Build');
    return ListView.builder(  //Alternatif ListView widget untuk meningkatkan performa rendering data List
      itemBuilder: _buildProductItem, //Method Widget
      itemCount: products.length, //Hitung total data dari list Products
    );
  }
}
