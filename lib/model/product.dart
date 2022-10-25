import 'dart:core';

import 'Rating.dart';

class Product{
  int? id;
 String? title;
 double? price;
 String? category;
 String? description;
 String? image;


Product({
  this.id, this.title, this.price, this.category, this.description, this.image
});

factory Product.fromJson(Map<String,dynamic> obj){
  return Product(
    id: obj['id'],
    title: obj['title'],
    price: obj['price'],
    category: obj['category'],
    description: obj['description'],
    image: obj['image'],


  );
}
}
