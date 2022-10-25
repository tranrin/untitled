import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import '../model/product.dart';
class ProductProvider extends ChangeNotifier{
  List<Product> list=[];
  Future<void> getList()async{
    String apiURL="https://fakestoreapi.com/products";
    var client=http.Client();
    var jsonString= await client.get(Uri.parse(apiURL));
    var jsonObject =jsonDecode(jsonString.body);
    var newListObject= jsonObject as List;
    list =newListObject.map((e){
      return Product.fromJson(e);
    }).toList();
    notifyListeners();
  }
  void searchProduct(String input){
    list=list.where((element) => element.title.toString().toLowerCase().contains(input.toLowerCase())).toList();
  }
}