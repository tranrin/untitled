import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:untitled/model/News.dart';
import 'package:http/http.dart' as http;
class CategoryProvider extends ChangeNotifier{
  List<News> list=[];
  void getList()async{
    String apiURL="https://fakestoreapi.com/products/category/jewelery";
    var client=http.Client();
    var jsonString= await client.get(Uri.parse(apiURL));
    var jsonObject =jsonDecode(jsonString.body);
    var newListObject= jsonObject as List;
    list =newListObject.map((e){
      return News.fromJson(e);
    }).toList();
    notifyListeners();
  }
}