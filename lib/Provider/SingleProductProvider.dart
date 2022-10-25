import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import '../model/product.dart';
class SingleProductProvider extends ChangeNotifier {
  Product product = Product();

  void getList(String id) async {
    print('idtrong' + id);
    String apiURL = 'https://fakestoreapi.com/products/${id}';

    var client = http.Client();
    var jsonString = await client.get(Uri.parse(apiURL));
    var jsonObject = jsonDecode(jsonString.body);

    // var newListObject= jsonObject ;

    product = Product.fromJson(jsonObject);
  }
}