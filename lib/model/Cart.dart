import 'package:flutter/cupertino.dart';
import 'package:untitled/model/product.dart';

import 'ItemCart.dart';

class CartModel extends ChangeNotifier {
  Product model;
  int quantity;


  CartModel({required this.model,
    required this.quantity,
  });

}