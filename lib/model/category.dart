import 'dart:core';

import 'package:flutter/foundation.dart';
class Category {
  String categoryName;
  int id;


  Category(this.id,this.categoryName);

  static List<Category> mockData() {
    List<Category> ls = [];
    ls.add(Category(1,"electronics"));
    ls.add(Category(2,"jewelery"));
    ls.add(Category(3,"men's clothing"));
    ls.add(Category(4,"women's clothing"));
    return ls;
  }
}
