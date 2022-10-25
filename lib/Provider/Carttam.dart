import 'package:flutter/cupertino.dart';

import '../model/product.dart';

class CartProvider extends ChangeNotifier{
  List<Product> list=[
    Product(id:1,title: 'stuff',price: 15.00,category: 'electronic',description: 'lorem ipsum',image: 'assets/images/download.png')
  ];
  int getCounter() {
    int _counter=list.length;
    return _counter;
  }



}