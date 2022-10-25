import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:untitled/model/News.dart';
import 'package:http/http.dart' as http;
class NewsProvider extends ChangeNotifier{
  List<News> list=[];
  void getList()async{
    String apiURL="https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=3e6cc545e10a4a05af7a7fcbd8d89375";
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