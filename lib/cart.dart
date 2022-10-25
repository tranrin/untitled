library cart;

import 'package:untitled/model/Cart.dart';

import 'model/product.dart';

List<CartModel> list =[];

void add(Product pro,int sl){
  CartModel cart = new CartModel(model: pro,quantity: sl);
  for(int i = 0;i < list.length;i++){
    if(pro.id == list[i].model.id){
      list[i].quantity+=sl;
      return;
    }
  }
  list.add(cart);
}
void addQuatity(Product product){
  for(int i = 0;i<list.length;i++){
    if(product.id == list[i].model.id){list[i].quantity++;return;}

  }
}
void removeQuatity(Product product){
  for(int i = 0;i<list.length;i++){
    if(product.id == list[i].model.id){list[i].quantity--;return;}

  }
}

double total(){
  double totall=0;
  for(int i=0;i<list.length;i++){
    totall+=(list[i].quantity*list[i].model.price!);
  }
  return totall;
}
void removeProduct(int id){
  for(int i = 0;i<list.length;i++){
    if(id == list[i].model.id)
    {list.removeAt(i);}

  }
}