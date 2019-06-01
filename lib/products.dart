import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products; //Variabel constructor untuk List Product
  final Function deleteProduct;
  Products(this.products,{this.deleteProduct}) {
    // Products(this.products){
    print('[Product Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    //Custom method untuk Widget Rendering ListView.Builder dengan constructor context dan index
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            products[index]['image'],
            height: 50,
            width: 50,
            alignment: Alignment.center,
          ),
          Text(products[index]['title']), //akses data List dengan mengakses index langsung dari Listnya
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Detail'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(products[index]['title'],products[index]['image']),
                      ),
                    ).then((bool value){
                      if(value){
                        deleteProduct(index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  //Alternatif Rendering List Condition dengan Widget Method
  Widget _buildProductLists() {
    Widget productCard = Center(child: Text('Tidak Ada Data Produk'));
    if (products.length > 0) {
      productCard = ListView.builder(
        //Alternatif ListView widget untuk meningkatkan performa rendering data List
        itemBuilder: _buildProductItem, //Method Widget
        itemCount: products.length, //Hitung total data dari list Products
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] Build');
    return _buildProductLists(); //Render List Conditional dengan Widget Method
    //Alternatif Tenary Operator IF
    // return products.length > 0 ? ListView.builder(  //Alternatif ListView widget untuk meningkatkan performa rendering data List
    //   itemBuilder: _buildProductItem, //Method Widget
    //   itemCount: products.length, //Hitung total data dari list Products
    // ) : Center(child:Text('Tidak Ada Data Produk'));

    // Alternatif IF Operator
    // if(products.length > 0){
    //   return ListView.builder(  //Alternatif ListView widget untuk meningkatkan performa rendering data List
    //     itemBuilder: _buildProductItem, //Method Widget
    //     itemCount: products.length, //Hitung total data dari list Products
    //   );
    // }else{
    //   return Center(child: Text('Tidak Ada Data Produk'));
    // }

    // Widget productCard = ListView.builder(  //Alternatif ListView widget untuk meningkatkan performa rendering data List
    //   itemBuilder: _buildProductItem, //Method Widget
    //   itemCount: products.length, //Hitung total data dari list Products
    // );
    // Widget productEmpty = Center(child: Text('Tidak Ada Data Produk'));
    // if(products.length > 0){
    //   return productCard;
    // }else{
    //   return productEmpty;
    // }
  }
}
